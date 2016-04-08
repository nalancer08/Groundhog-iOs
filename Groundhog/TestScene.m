//
//  TestScene.m
//  Groundhog
//
//  Created by Webchimp on 08/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "TestScene.h"

@implementation TestScene

- (id)init {
    self = [super init];
    if ( self != nil ) {
        
        self.mCar = [[TestEntity alloc] init];
        [self addEntity:self.mCar :@"car"];
        [self.mCar setPos:10 :50];
    }
    return self;
}

- (void)update {
    [super update];
}

- (void)draw:(UIView *)canvas {
    [super draw:canvas];
}


@end
