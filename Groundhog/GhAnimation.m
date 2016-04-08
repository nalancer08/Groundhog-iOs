//
//  GhAnimation.m
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhAnimation.h"
#import "GhSystem.h"

@implementation GhAnimation

- (id)init:(GhAnimationSheet *)sheet :(long)frameTime :(NSMutableArray *)sequence :(BOOL)stop {
    self = [super init];
    if ( self != nil ) {
        
        _mSheet = sheet;
        _mTimer = [[GhTimer alloc] init];
        _mSequence = sequence;
        _mFlip = [[GhVector2D alloc] init:0 :0];
        _mPivot = [[GhVector2D alloc] init:[self.mSheet getWidth] / 2 :[self.mSheet getHeight] / 2];
        _mFrame = 0;
        _mTile = (int)sequence[0];
        _mLoopCount = 0;
        _mAlpha = 0.0f;
        _mAngle = 0.0f;
        _mFrameTime = frameTime;
        _mStop = stop;
    }
    return self;
}

- (void)rewind {
    [_mTimer set:0];
    _mLoopCount = 0;
    _mFrame = 0;
    _mTile = (int)[self.mSequence objectAtIndex:0];
}

- (void)goToFrame:(int)frame {
    [_mTimer set:(self.mFrameTime * -frame)];
    [self update];
}

- (void)update {
    float frameTotal = (long)floor([self.mTimer delta] / self.mFrameTime);
    _mLoopCount = (int)floor(frameTotal / (float) [self.mSequence count] );
    if ( self.mStop && self.mLoopCount > 0 ) {
        _mFrame = (int)[self.mSequence count] - 1;
    } else {
        _mFrame = (int)frameTotal % [self.mSequence count];
    }
    _mTile = (int)self.mSequence[self.mFrame];
}

- (void)draw:(UIView *)canvas :(int)targetX :(int)targetY {
    GhSystem *system = [GhSystem getInstance];
    int bbsize = fmax([self.mSheet getWidth], [self.mSheet getHeight]);
    // On screen?
    if ( targetX > [system getWidth] || targetY > [system getHeight] || targetX + bbsize < 0 || targetY + bbsize < 0 ) {
        return;
    }
    if (self.mAngle == 0) {
        //_mSheet.mImage.drawTile(canvas, targetX, targetY, this.mTile, this.mSheet.getWidth(), this.mSheet.getHeight(), (this.mFlip.x != 0.0f), this.mFlip.y != 0.0f);
        [self.mSheet.mImage drawTitle:canvas :targetX :targetY :self.mTile :[self.mSheet getWidth] :[self.mSheet getHeight] :(_mFlip.x != 0.0f) :(_mFlip.y != 0.0f)];
    }
}

- (void)setFlip:(BOOL)flipX :(BOOL)flipY {
    _mFlip.x = flipX ? 1 : 0;
    _mFlip.y = flipY ? 1 : 0;
}

@end
