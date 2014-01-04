//
//  PlayingCardGameViewController.m
//  Matchismo
//
//  Created by Michael Ho on 1/1/2014.
//  Copyright (c) 2014 Michael Ho. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

@end
