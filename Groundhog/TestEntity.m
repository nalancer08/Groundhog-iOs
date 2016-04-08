//
//  TestEntity.m
//  Groundhog
//
//  Created by Webchimp on 08/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "TestEntity.h"

@implementation TestEntity

- (id)init {
    self = [super init];
    if ( self != nil ) {
        NSMutableArray *sequence = [[NSMutableArray alloc] init];
        [sequence addObject: [NSNumber numberWithInt:0] ];
        [sequence addObject:[NSNumber numberWithInt:1] ];
        _mSheet = [[GhAnimationSheet alloc] init:@"car" :128 :70];
        self.mCurrentAnim = [[GhAnimation alloc] init:self.mSheet :250 :sequence :false];
        _mDirection = 1;
    }
    return self;
}

- (void)update {
    [super update];
    /*GhSystem *system = [GhSystem getInstance];
    
    if ( self.mPos.x > system.getWidth - 128 ) {
        _mDirection = -1;
    } else if ( self.mPos < 0 ) {
        _mDirection = 1;
    }
    
    self.mPos.x += 1 * self.mDirection;
    [self.mCurrentAnim setFlip:(self.mDirection == -1) :false];*/
}


@end
