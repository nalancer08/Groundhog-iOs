//
//  GhEntity.m
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhEntity.h"

@implementation GhEntity

- (id) init {
    self = [super init];
    if ( self != nil ) {
        
        _mCurrentAnim = nil;
        _mOffset = [[GhVector2D alloc] init:0 :0];
        _mSize = [[GhVector2D alloc] init:0 :0];
        _mPos = [[GhVector2D alloc] init:0 :0];
    }
    return self;
}

- (void)setCurAnim:(GhAnimation *)currentAnim {
    _mCurrentAnim = currentAnim;
}

- (GhAnimation *)getCurAnim {
    return  self.mCurrentAnim;
}

- (void)update {
    if ( self.mCurrentAnim != nil ) {
        [self.mCurrentAnim update];
    }
}

- (void)draw:(UIView *)canvas {
    if ( self.mCurrentAnim != nil ) {
        
        GhVector2D *pos = [self getPos];
        GhVector2D *offset = [self getOffset];
        [self.mCurrentAnim draw:canvas :(int)( pos.x - offset.x ) :(int)( pos.y - offset.y ) ];
    }
}

- (GhVector2D *) getOffset {
    return _mOffset;
}

- (void)setOffset:(float)x :(float)y {
    [_mOffset set:x :y];
}

- (GhVector2D *)getSize {
    return _mSize;
}

- (void)setSize:(float)x :(float)y {
    [_mSize set:x :y];
}

- (GhVector2D *)getPos {
    return _mPos;
}

- (void)setPos:(float)x :(float)y {
    [_mPos set:x :y];
}

@end
