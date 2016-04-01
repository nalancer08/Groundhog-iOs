//
//  GhTimer.h
//  Groundhog
//
//  Created by Webchimp on 01/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GhTimer : NSObject

    @property (nonatomic) long mTarget;
    @property (nonatomic) long mBase;
    @property (nonatomic) long mLast;
    @property (nonatomic) long mPausedAt;

    - (void)set:(long)seconds;
    - (void)reset;
    - (long)tick;
    - (long)delta;
    - (void)pause;
    - (void)unpause;


@end
