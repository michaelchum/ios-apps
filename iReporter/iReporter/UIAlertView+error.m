//
//  UIAlertView+error.m
//  iReporter
//
//  Created by Michael Ho on 11/12/13.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "UIAlertView+error.h"

@implementation UIAlertView(error)
+(void)error:(NSString*)msg
{
    [[[UIAlertView alloc] initWithTitle:@"Error" 
                                message:msg 
                               delegate:nil 
                      cancelButtonTitle:@"Close" 
                      otherButtonTitles: nil] show];
}
@end
