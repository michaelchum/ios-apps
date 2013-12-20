//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Michael Ho on 12/19/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init {
    
    // This is the ONLY time we assign self
    // The purpose is just to check if self can be initialized (not nil)
    self = [super init];
    
    if(self) {
        for( NSString *suit in [PlayingCard validSuits] ) {
            for ( NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = rank;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
