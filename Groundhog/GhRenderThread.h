//
//  GhRenderThread.h
//  Groundhog
//
//  Created by Webchimp on 07/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GhSurfaceView;

@interface GhRenderThread : NSThread

@property (nonatomic) BOOL mRunning;
@property (retain, nonatomic) GhSurfaceView *mView;

- (id)init:(GhSurfaceView *)view;
- (void)setRunning:(BOOL)running;
- (void)run;



@end
