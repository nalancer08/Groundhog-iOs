//
//  GhAnimation.h
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GhAnimationSheet.h"
#import "GhTimer.h"
#import "GhVector2D.h"
#import <UIKit/UIKit.h>


@interface GhAnimation : NSObject

@property (retain, nonatomic) GhAnimationSheet *mSheet;
@property (retain, nonatomic) GhTimer *mTimer;
@property (retain, nonatomic) NSMutableArray *mSequence;
@property (retain, nonatomic) GhVector2D *mFlip;
@property (retain, nonatomic) GhVector2D *mPivot;
@property (nonatomic) int mFrame;
@property (nonatomic) int mTile;
@property (nonatomic) int mLoopCount;
@property (nonatomic) float mAlpha;
@property (nonatomic) float mAngle;
@property (nonatomic) long mFrameTime;
@property (nonatomic) BOOL mStop;

- (id)init:(GhAnimationSheet *)sheet :(long)frameTime :(NSMutableArray *)sequence :(BOOL)stop;
- (void)rewind;
- (void)goToFrame:(int)frame;
- (void)update;
- (void)draw:(UIView *)canvas :(int)targetX :(int)targetY;
- (void)setFlip:(BOOL)flipX :(BOOL)flipY;


@end
