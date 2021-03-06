//
//  GhSystem.m
//  Groundhog
//
//  Created by Webchimp on 01/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhSystem.h"
#include <sys/time.h>

static GhSystem *mInstance = nil;

@implementation GhSystem
- (id) init {
    self = [super init];
    if ( self != nil ) {
        
        _mSurfaceView = nil;
        _mScene = nil;
    }
    return self;
}

+ (GhSystem *)getInstance {
    //static GhSystem *mInstance = nil;
    @synchronized(self) {
        if (mInstance == nil)
            mInstance = [[GhSystem alloc] init];
    }
    return mInstance;
}

- (void)initialize:(UIViewController *)activity {

    _mContext = activity;
    
    _mWidth = [[UIScreen mainScreen] bounds].size.width;
    _mHeight = [[UIScreen mainScreen] bounds].size.height;
    
    _mSurfaceView = [[GhSurfaceView alloc] init:activity];
    activity.view = self.mSurfaceView;
    
    //[activity.view addSubview:self.mSurfaceView];
    
    //CGContextRef context = UIGraphicsGetCurrentContext();

}

- (int)getWidth {
    return self.mWidth;
}

- (int)getHeight {
    return self.mHeight;
}

- (void)setScene:(GhScene *)scene {
    self.mScene = scene;
}

- (UIViewController *)getContext {
    return self.mContext;
}

- (GhScene *)getScene {
    return self.mScene;
}

- (void)run {
    _mTick = [self currentTimeMillis];
}

// Method to return the current millis *** ONLY IN IOS ***
- (int64_t)currentTimeMillis {
    
    struct timeval time;
    gettimeofday(&time, NULL);
    
    //long millis = (time.tv_sec * 1000) + (time.tv_usec / 1000);
    int64_t result = ((int64_t)time.tv_sec * 1000) + ((int64_t)time.tv_usec / 1000);
    return result;
}



@end
