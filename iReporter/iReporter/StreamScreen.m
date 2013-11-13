//
//  StreamScreen.m
//  iReporter
//
//  Created by Michael Ho on 11/12/13.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "StreamScreen.h"

@implementation StreamScreen

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"iReporter stream";
    self.navigationItem.rightBarButtonItem = btnCompose;
    self.navigationItem.leftBarButtonItem = btnRefresh;

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)btnRefreshTapped
{
    
}

@end
