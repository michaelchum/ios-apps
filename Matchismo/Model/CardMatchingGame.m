//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by Michael Ho on 12/20/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()

@property (nonatomic, readwrite) NSUInteger score;
@property (nonatomic, strong) NSMutableArray *cards; // of cards

@end

@implementation CardMatchingGame

- (NSMutableArray *)cards {
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

// constructor/initializer
- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck {
    
    self = [super init]; // super's designated intializer
    
    if (self) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (card) {
                card.chosen = NO;
                card.isMatched = NO;
                [self.cards addObject:card];
            } else {
                self = nil;
                break;
            }
        }
    }
    return self;
}

- (Card *)cardAtIndex:(NSUInteger)index {
    return index < [self.cards count] ? self.cards[index] : nil;
}

static const int MATCH_BONUS = 4;
static const int MISMATCH_PENALTY = 2;
static const int COST_TO_CHOOSE = 1;

- (void)chooseCardAtIndex:(NSUInteger)index {
    Card *card = [self cardAtIndex:index];
    self.matchInfo = @"Welcome to Matchismo";
    if (!card.isMatched) {
        if (!self.threeCardMatching) { // 2 card matching
            if (card.chosen) {
                card.chosen = NO;
                self.matchInfo = @"";
            } else {
                // match against other chosen card
                for (Card *otherCard in self.cards) {
                    if (otherCard.chosen && !otherCard.isMatched) {
                        int matchScore = [card match:@[otherCard]];
                        if (matchScore) {
                            self.score += matchScore * MATCH_BONUS;
                            otherCard.isMatched = YES;
                            card.isMatched = YES;
                            self.matchInfo = [NSString stringWithFormat:@"Matched %@ %@ for %d points",card.contents,otherCard.contents,matchScore*MATCH_BONUS];
                        } else {
                            self.score -= MISMATCH_PENALTY;
                            otherCard.chosen = NO;
                            self.matchInfo = [NSString stringWithFormat:@"%@ %@ don't match! %d points penalty!",card.contents,otherCard.contents,MISMATCH_PENALTY];
                        }
                    }
                }
                if ([self.matchInfo isEqual: @"Welcome to Matchismo"]) self.matchInfo = card.contents;
                self.score -= COST_TO_CHOOSE;
                card.chosen = YES;
            }
        } else { // 3 card matching
            if (card.chosen) {
                card.chosen = NO;
                self.matchInfo = @"";
            } else {
                // find 2 other chosen cards
                Card *secondCard;
                Card *thirdCard;
                for (Card *otherCard in self.cards) {
                    if (!secondCard && otherCard.chosen && !otherCard.isMatched) {
                        secondCard = otherCard;
                    } else if (!thirdCard && otherCard.chosen && !otherCard.isMatched) {
                        thirdCard = otherCard;
                    }
                }
                if (secondCard && thirdCard) {
                    int matchScore = [card match:@[secondCard]];
                    matchScore += [card match:@[thirdCard]];
                    matchScore += [secondCard match:@[thirdCard]];
                    if (matchScore) {
                        self.score += matchScore * MATCH_BONUS;
                        card.isMatched = YES;
                        secondCard.isMatched = YES;
                        thirdCard.isMatched = YES;
                        self.matchInfo = [NSString stringWithFormat:@"Matched %@ %@ %@ for %d points",card.contents,secondCard.contents,thirdCard.contents,matchScore*MATCH_BONUS];
                    } else {
                        self.score -= MISMATCH_PENALTY;
                        secondCard.chosen = NO;
                        thirdCard.chosen = NO;
                        self.matchInfo = [NSString stringWithFormat:@"%@ %@ %@ don't match! %d points penalty!",card.contents,secondCard.contents,thirdCard.contents,MISMATCH_PENALTY];
                    }
                } else {
                    self.matchInfo = card.contents;
                }
                self.score -= COST_TO_CHOOSE;
                card.chosen = YES;
            }
        }
    }
}

@end
