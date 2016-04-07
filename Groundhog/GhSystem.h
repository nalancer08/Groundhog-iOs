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
#import "GhSurfaceView.h"

@interface GhSystem : NSObject

    @property (nonatomic) UIViewController *mContext;
    @property (retain, nonatomic) GhSurfaceView *mSurfaceView;
    @property (retain, nonatomic) GhScene *mScene;
    @property (nonatomic) long mTick;
    @property (nonatomic) int mWidth;
    @property (nonatomic) int mHeight;

    + (GhSystem *)getInstance ;
    - (void)initialize:(UIViewController *)activity;
    - (int)getWidth;
    - (int)getHeight;
    - (void)setScene:(GhScene *)scene;
    - (UIViewController *)getContext;
    - (GhScene *)getScene;
    - (void)run;




@end
