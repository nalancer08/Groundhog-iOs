//
//  GhRenderThread.m
//  Groundhog
//
//  Created by Webchimp on 07/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhRenderThread.h"
#import "GhSurfaceView.h"

@implementation GhRenderThread

- (id)init:(GhSurfaceView *)view {
    
    self = [super init];
    if ( self != nil ) {
        
        _mView = view;
        _mRunning = false;
        [self performSelector:@selector(run) withObject:nil];
    }
    return self;
}

- (void)setRunning:(BOOL)running {
    _mRunning = running;
}

- (id)init {
    
    self = [super init];
    if (self) {
        [self performSelector:@selector(run) withObject:nil];
    }
    return self;
}

- (void)run {
    NSLog(@"ya no se que pedo");
}

@end
