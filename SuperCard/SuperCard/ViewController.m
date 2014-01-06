//
//  ViewController.m
//  SuperCard
//
//  Created by Michael Ho on 1/4/2014.
//  Copyright (c) 2014 Michael Ho. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.playingCardView.suit = @"♥︎";
    self.playingCardView.rank = 13;
}

@end
