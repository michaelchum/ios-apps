//
//  XYZToDoItemViewController.h
//  ToDoList
//
//  Created by Michael Ho on 12/13/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZToDoItemViewController : UIViewController

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
