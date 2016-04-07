//
//  GhSurfaceView.m
//  Groundhog
//
//  Created by Webchimp on 07/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhSurfaceView.h"

@implementation GhSurfaceView

- (id)init:(UIViewController *)context {
    
    self = [super init];
    if ( self != nil ) {
        
        _mThread = [[GhRenderThread alloc] init:self];
        [self.mThread setRunning:TRUE];
        [self.mThread start];
    }
    return self;
}

@end
