//
//  StreamScreen.h
//  iReporter
//
//  Created by Michael Ho on 11/12/13.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StreamScreen : UIViewController
{
    IBOutlet UIBarButtonItem* btnCompose;
    IBOutlet UIBarButtonItem* btnRefresh;
    IBOutlet UIScrollView* listView;
}

//refresh the photo stream
-(IBAction)btnRefreshTapped;

@end
