//
//  GhVector2D.m
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhVector2D.h"

@implementation GhVector2D

- (id) init:(float)x :(float)y {
    self = [super init];
    if ( self != nil ) {
        
        [self set:x :y];
    }
    return self;
}

- (void)set:(float)x :(float)y {
    _x = x;
    _y = y;
}


@end
