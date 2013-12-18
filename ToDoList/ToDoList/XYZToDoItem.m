//
//  XYZToDoItem.m
//  ToDoList
//
//  Created by Michael Ho on 12/16/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "XYZToDoItem.h"

// The properties declared here are private, cannnot be accessed by other classes importing XYZToDoItem.h
@interface XYZToDoItem ()

@property NSDate *completionDate;

@end

@implementation XYZToDoItem

- (void)markAsCompleted:(BOOL)isComplete {
    self.completed = isComplete;
    [self setCompletionDate];
}

- (void)setCompletionDate {
    if (self.completed) {
        self.completionDate = [NSDate date];
    } else {
        self.completionDate = nil;
    }
}

@end
