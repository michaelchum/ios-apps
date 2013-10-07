//
//  BullsEyeViewController.h
//  BullsEye
//
//  Created by Michael Ho on 2013-09-26.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BullsEyeViewController : UIViewController

@property (nonatomic, weak) IBOutlet UISlider *slider;
@property (nonatomic, weak) IBOutlet UILabel *targetLabel;
@property (nonatomic, weak) IBOutlet UILabel *scoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *roundLabel;

- (IBAction)showAlert;

- (IBAction)sliderMoved:(UISlider *)slider;

@end
