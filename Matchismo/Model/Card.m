//
//  Card.m
//  Matchismo
//
//  Created by Michael Ho on 12/19/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "Card.h"

@implementation Card

- (void)match:(NSArray *)otherCards {
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString: self.contents]) {
            
        }
    }
}

@end
