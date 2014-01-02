//
//  AttributorViewController.m
//  Attributor
//
//  Created by Michael Ho on 12/25/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "AttributorViewController.h"

@interface AttributorViewController ()
@property (weak, nonatomic) IBOutlet UIButton *outlineButton;
@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UITextView *body;
@end

@implementation AttributorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib (storyboard).
    
    // There is no NSMutableAttributedString for UIButton, so we have to make one and set the immutable copy to UIButton
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc]
                                        initWithString:self.outlineButton.currentTitle];
    [title addAttributes:@{ NSStrokeWidthAttributeName : @3,
                            NSStrokeColorAttributeName : self.outlineButton.tintColor }
                   range:NSMakeRange(0, [title length])];
    // for C structs, there is usually a NSMake method to make the struct, as for NSRange
    
    [self.outlineButton setAttributedTitle:title forState:UIControlStateNormal];

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(preferredFontsChanged:)
                                                 name:UIContentSizeCategoryDidChangeNotification object:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self usePreferredFonts];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:nil];
}

- (void)preferredFontsChanged:(NSNotification *)notification
{
    [self usePreferredFonts];
}

- (void)usePreferredFonts
{
    self.body.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.headline.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
}

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

@end
