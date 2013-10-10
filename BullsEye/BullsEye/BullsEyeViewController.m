//
//  BullsEyeViewController.m
//  BullsEye
//
//  Created by Michael Ho on 2013-09-26.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "BullsEyeViewController.h"

@interface BullsEyeViewController () 

@end

@implementation BullsEyeViewController
{
    int _currentValue;
    int _targetValue;
    int _score;
    int _round;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self startNewGame];
    [self updateLabels];
}

- (void)startNewRound
{
    _round += 1;
    _targetValue = 1 + arc4random_uniform(100);
    _currentValue = 50;
    self.slider.value = _currentValue;
    [self updateLabels];
    
}

- (void)updateLabels
{
    self.targetLabel.text = [NSString stringWithFormat:@"%d",_targetValue];
    self.scoreLabel.text = [NSString stringWithFormat:@"%d",_score];
    self.roundLabel.text = [NSString stringWithFormat:@"%d",_round];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert {
    
    int difference = abs(_targetValue - _currentValue);
    int points = 100 - difference;
    
    NSString *title; 
    if (difference == 0) {
        title = @"Perfect!";
        points += 100;
    } else if (difference < 5) {
        title = @"You almost had it!";
        if (difference == 1){
            points += 50;
        }
    } else if (difference < 10) {
        title = @"Pretty good!";
    } else {
        title = @"Not even close...";
    }
    
    _score += points;
    
    NSString *message = [NSString stringWithFormat:@"You scored %d points", points];
    
    //NSString *message = [NSString stringWithFormat:@"The value of the slider is: %d\nThe target value is: %d\nThe difference is %d", _currentValue, _targetValue, difference];
                         
    UIAlertView *alertView = [[UIAlertView alloc]
        initWithTitle:title
        message:message
        delegate:self
        cancelButtonTitle:@"OK"
        otherButtonTitles:nil];
    
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView
    didDismissWithButtonIndex:(NSInteger)buttonIndex
    {
        [self startNewRound];
    }

- (IBAction)sliderMoved:(UISlider *)slider {
    _currentValue = lroundf(slider.value);
}

- (IBAction)startOver{
    [self startNewGame];
}

- (void)startNewGame {
    _score = 0;
    _round = 0;
    [self startNewRound];
}

@end
