//
//  Card.h
//  Matchismo
//
//  Created by Michael Ho on 12/19/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic) BOOL isMatched;
@property (nonatomic) BOOL chosen;

- (int)match:(NSArray *)otherCards;

@end
