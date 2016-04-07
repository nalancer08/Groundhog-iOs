//
//  GhEntity.h
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "GhVector2D.h"
#import "GhAnimation.h"


@interface GhEntity : NSObject

@property (retain, nonatomic) GhAnimation *mCurrentAnim;
@property (retain, nonatomic) GhVector2D *mOffset;
@property (retain, nonatomic) GhVector2D *mSize;
@property (retain, nonatomic) GhVector2D *mPos;

- (void)setCurAnim:(GhAnimation*)currentAnim;
- (GhAnimation *)getCurAnim;
- (void)update;
- (void)draw:(UIView *)canvas;
- (GhVector2D *)getOffset;
- (void)setOffset:(float)x :(float)y;
- (GhVector2D *)getSize;
- (void)setSize:(float)x :(float)y;
- (GhVector2D *)getPos;
- (void)setPos:(float)x :(float)y;

@end
