//
//  CardGameViewController.h
//  Matchismo
//
//  Created by Michael Ho on 12/19/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//
// Abstract class. Must implement methods as described below.

#import <UIKit/UIKit.h>
#import "Deck.h"

// protected
// for subclasses
@interface CardGameViewController : UIViewController

- (Deck *)createDeck;

@end
