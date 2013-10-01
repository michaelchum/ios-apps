//
//  XYZViewController.h
//  QuoteGen
//
//  Created by Michael Ho on 2013-09-25.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZViewController : UIViewController

@property (nonatomic, strong) NSArray *myQuotes;
@property (nonatomic, strong) NSMutableArray *movieQuotes;
@property (nonatomic, strong) IBOutlet UITextView *quoteText;

- (IBAction)quoteButtonTapped:(id)sender;

@end
