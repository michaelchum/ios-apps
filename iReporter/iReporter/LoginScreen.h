//
//  LoginScreen.h
//  iReporter
//
//  Created by Michael Ho on 11/12/13.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginScreen : UIViewController
{
    //the login form fields
    IBOutlet UITextField* fldUsername;
    IBOutlet UITextField* fldPassword;
}

//action for when either button is pressed
-(IBAction)btnLoginRegisterTapped:(id)sender;

@end