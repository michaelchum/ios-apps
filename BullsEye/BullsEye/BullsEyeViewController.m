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
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert {
    
    NSString *message = [NSString stringWithFormat:
        @"The value of the slider is: %d", _currentValue];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:
        @"Hello, World!" message:message
        delegate:nil
        cancelButtonTitle:@"OK"
        otherButtonTitles:nil];
    
    [alertView show];
}

- (IBAction)sliderMoved:(UISlider *)slider {
    _currentValue = lroundf(slider.value);
}

@end
