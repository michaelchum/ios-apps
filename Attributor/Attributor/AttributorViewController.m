//
//  AttributorViewController.m
//  Attributor
//
//  Created by Michael Ho on 12/25/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "AttributorViewController.h"

@interface AttributorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UITextView *body;
@end

@implementation AttributorViewController

// - (void)addAttribute:value:range:
- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender {
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName
                                  value:sender.backgroundColor
                                  range:self.body.selectedRange];
}
- (IBAction)unoutlineBodySelection:(id)sender {
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName range:self.body.selectedRange];
}

- (IBAction)outlineBodySelection:(id)sender {
    // stroke @3 means not filled (center clear) stroke @-3 means FILLED (center is filled with color)
    // addAttributes (with s) requires a dictionary as input and a range
    // - (void)addAttributes:range:
    [self.body.textStorage addAttributes:@{ NSStrokeWidthAttributeName : @-3,
                                            NSStrokeColorAttributeName : [UIColor blackColor] }
                                   range:self.body.selectedRange];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

@end
