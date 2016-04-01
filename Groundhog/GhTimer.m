//
//  GhTimer.m
//  Groundhog
//
//  Created by Webchimp on 01/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhTimer.h"
#include <sys/time.h>

@implementation GhTimer

- (id) init {
    self = [super init];
    if ( self != nil ) {
        
        _mBase = [self currentTimeMillis];
        _mLast = self.mBase;
        _mTarget = 0;
        _mPausedAt = 0;
    }
    return self;
}

- (void)set:(long)seconds {
    
    _mTarget = seconds;
    _mBase = [self currentTimeMillis];
    _mPausedAt = 0;
}

- (void)reset {
    
    _mBase = [self currentTimeMillis];
    _mPausedAt = 0;
    
}

- (long)tick {
    
    long now = [self currentTimeMillis];
    long delta = now - self.mLast;
    _mLast = now;
    return (self.mPausedAt > 0 ? 0 : delta);
}

- (long)delta {
    
    long now = [self currentTimeMillis];
    return (self.mPausedAt > 0 ? self.mPausedAt : now) - self.mBase - self.mTarget;
}

- (void)pause {
    
    if ( self.mPausedAt == 0 ) {
        self.mPausedAt = [self currentTimeMillis];
    }
}

- (void)unpause {
    
    if ( self.mPausedAt != 0 ) {
        _mBase += [self currentTimeMillis] - self.mPausedAt;
        _mPausedAt = 0;
    }
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
