//
//  API.h
//  iReporter
//
//  Created by Michael Ho on 11/13/2013.
//  Copyright (c) 2013 Marin Todorov. All rights reserved.
//

#import "AFNetworking/AFURLRequestSerialization.m"
#import "AFNetworking.h"

//API call completion block with result as json
typedef void (^JSONResponseBlock)(NSDictionary* json);

@interface API : AFHTTPBodyPart

//the authorized user
@property (strong, nonatomic) NSDictionary* user;

//check whether there's an authorized user
-(BOOL)isAuthorized;

//send an API command to the server
-(void)commandWithParams:(NSMutableDictionary*)params onCompletion:(JSONResponseBlock)completionBlock;

//access the static instance of the class
+(API*)sharedInstance;

@end
