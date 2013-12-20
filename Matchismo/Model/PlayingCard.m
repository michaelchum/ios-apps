//
//  PlayingCard.m
//  Matchismo
//
//  Created by Michael Ho on 12/19/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit; // because we add BOTH the getter and setter

// Override getter from superclass Card
- (NSString *)contents {
    NSArray *rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

// Override setter
- (void) setSuit:(NSString *)suit {
    if ([@[@"♣︎",@"♠︎",@"♥︎",@"♦︎"] containsObject:suit]) {
        _suit = suit;
    }
}

// Override getter
- (NSString *)suit {
    return _suit ? _suit : @"?";
}

@end
