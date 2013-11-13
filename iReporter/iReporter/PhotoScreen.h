//
//  PhotoScreen.h
//  iReporter
//
//  Created by Michael Ho on 11/12/13.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoScreen : UIViewController<UIImagePickerControllerDelegate, UIActionSheetDelegate, UITextFieldDelegate>
{
    IBOutlet UIImageView* photo;
    IBOutlet UIBarButtonItem* btnAction;
    IBOutlet UITextField* fldTitle;
}

//show the app menu 
-(IBAction)btnActionTapped:(id)sender;


@end
