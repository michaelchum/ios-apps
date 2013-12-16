//
//  XYZToDoItem.h
//  ToDoList
//
//  Created by Michael Ho on 12/16/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
