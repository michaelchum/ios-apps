//
//  API.m
//  iReporter
//
//  Created by Michael Ho on 11/13/2013.
//  Copyright (c) 2013 Marin Todorov. All rights reserved.
//

//the web location of the service
#define kAPIHost @"http://michaelchum.com/ireport"
#define kAPIPath @"iReporter/"

#import "API.h"
#import "API.m"

@implementation API

@synthesize user;

#pragma mark - Singleton methods
/**
 * Singleton methods
 */
+(API*)sharedInstance
{
    static API *sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        sharedInstance = [[self alloc] initWithBaseURL:[NSURL URLWithString:kAPIHost]];
    });
    
    return sharedInstance;
}


@end
