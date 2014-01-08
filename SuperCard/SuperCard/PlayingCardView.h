//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Michael Ho on 1/4/2014.
//  Copyright (c) 2014 Michael Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) BOOL faceUp;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;

@end
