//
//  XYZViewController.m
//  QuoteGen
//
//  Created by Michael Ho on 2013-09-25.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 1 - Add array of personal quotes
    self.myQuotes = @[
                      @"Live and let live",
                      @"Don't cry over spilt milk",
                      @"Always look on the bright side of life",
                      @"Nobody's perfect",
                      @"Can't see the woods for the trees",
                      @"Better to have loved and lost then not loved at all",
                      @"The early bird catches the worm",
                      @"As slow as a wet week"
                      ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)quoteButtonTapped:(id)sender {
    // Get number of rows in array
    int array_tot = [self.myQuotes count];
    // Get random index
    int index = (arc4random() % array_tot);
    // Get the quote string from the index
    NSString *my_quote = self.myQuotes[index];
    // Display the quote in the text view
    self.quoteText.text = [NSString stringWithFormat:@"Quote:\n\n%@",  my_quote];
    
}

@end








