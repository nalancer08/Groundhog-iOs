//
//  TestEntity.h
//  Groundhog
//
//  Created by Webchimp on 08/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GhEntity.h"
#import "GhAnimationSheet.h"
#import "GhSystem.h"

@interface TestEntity : GhEntity

@property (retain, nonatomic) GhAnimationSheet *mSheet;
@property (nonatomic) long mDirection;

- (void)update;

@end
