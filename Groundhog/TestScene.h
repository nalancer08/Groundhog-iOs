//
//  TestScene.h
//  Groundhog
//
//  Created by Webchimp on 08/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhScene.h"
#import "TestEntity.h"

@interface TestScene : GhScene

@property (retain, nonatomic) TestEntity *mCar;

- (void) update;
- (void)draw:(UIView *)canvas;

@end
