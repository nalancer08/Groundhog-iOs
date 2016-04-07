//
//  GhAnimationSheet.m
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhAnimationSheet.h"

@implementation GhAnimationSheet

- (id)init:(int)id :(int)width :(int)height {
    
    self = [super init];
    if ( self != nil ) {
        
        _mImage = [[GhImage alloc] init];
        _mWidth = width;
        _mHeight = height;
    }
    return self;
}

- (int)getWidth {
    return self.mWidth;
}

- (int)getHeight {
    return self.mHeight;
}

@end
