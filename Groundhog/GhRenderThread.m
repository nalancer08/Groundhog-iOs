//
//  GhRenderThread.m
//  Groundhog
//
//  Created by Webchimp on 07/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhRenderThread.h"
#import "GhSurfaceView.h"
#import "GhSystem.h"

@implementation GhRenderThread

- (id)init:(GhSurfaceView *)view {
    
    self = [super init];
    if ( self != nil ) {
        
        _mView = view;
        _mRunning = false;
        //[self performSelector:@selector(run) withObject:nil];
    }
    return self;
}

- (void)setRunning:(BOOL)running {
    _mRunning = running;
}


- (void)run {
    UIView *canvas;
    GhSystem *system = [GhSystem getInstance];
    GhScene *scene = nil;
    while (self.mRunning) {
        canvas = self.mView;
        @try {
            [system run];
            scene = [system getScene];
            if ( scene != nil && canvas != nil ) {
                [scene update];
                [scene draw:canvas];
            }
        }
        
        @catch (NSException * e) {
            NSLog(@"Exception: %@", e);
        }
        @finally {
            if ( canvas != nil ) {
                [canvas setNeedsDisplay];
            }
        }
    }
    
}

@end
