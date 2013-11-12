//
//  LoginViewController.m
//  VitaLogin
//
//  Created by Michael Ho on 11/12/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

/* OPTIONAL CAN REMOVE */
@synthesize txtUsername = _txtUsername;
@synthesize txtPassword = _txtPassword;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginClicked:(id)sender {
}

- (IBAction)backgroundClick:(id)sender {
    [_txtUsername resignFirstResponder];
    [_txtPassword resignFirstResponder];
}
@end
