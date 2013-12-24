//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Michael Ho on 12/19/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()
@property (strong, nonatomic) CardMatchingGame *game;
@property (weak, nonatomic) IBOutlet UISegmentedControl *twoOrThreeMatch;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@end

@implementation CardGameViewController

- (IBAction)twoOrThreeMatch:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 1:
            self.game.threeCardMatching = YES;
            break;
            
        default:
            self.game.threeCardMatching = NO;
            break;
    }
}

- (IBAction)restartButton:(UIButton *)sender {
    [self.twoOrThreeMatch setHidden:NO];
    self.game = nil;
    if (self.twoOrThreeMatch.selectedSegmentIndex) self.game.threeCardMatching = YES;
    self.game.matchInfo = [NSString stringWithFormat:@"Matchismo restarted"];
    [self updateUI];
}

- (CardMatchingGame *)game {
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                                          usingDeck:[self createDeck]];
    return _game;
}

- (Deck *)createDeck {
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    [self.twoOrThreeMatch setHidden:YES];
    int chosenButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chosenButtonIndex];
    [self updateUI];
}

- (void)updateUI {
    for (UIButton *cardButton in self.cardButtons) {
        int cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self contentForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    self.textLabel.text = self.game.matchInfo;
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
}

- (NSString *)contentForCard:(Card *)card {
    return card.chosen ? card.contents : @"";
}

- (UIImage *)backgroundImageForCard:(Card *)card {
    return [UIImage imageNamed:card.chosen ? @"cardfront" : @"cardback"];
}

@end
