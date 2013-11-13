//
//  StreamPhotoScreen.h
//  iReporter
//
//  Created by Michael Ho on 11/12/13.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StreamPhotoScreen : UIViewController
{
    //just the photo view and the photo title
    IBOutlet UIImageView* photoView;
    IBOutlet UILabel* lblTitle;
}

@property (assign, nonatomic) NSNumber* IdPhoto;

@end
