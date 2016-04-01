//
//  GhSystem.h
//  Groundhog
//
//  Created by Webchimp on 01/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GhScene.h"

@interface GhSystem : NSObject

    @property (retain, nonatomic) GhSystem *mInstance;
    @property (nonatomic) CGContextRef context;
    @property (retain, nonatomic) UIView *mSurfaceView;
    @property (retain, nonatomic) GhScene *mScene;
@property (nonatomic) long mTick;

@end
