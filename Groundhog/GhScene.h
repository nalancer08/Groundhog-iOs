//
//  GhScene.h
//  Groundhog
//
//  Created by Webchimp on 01/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helpers.h"
#import "GhEntity.h"

@interface GhScene : NSObject

@property (retain, nonatomic) NSMutableDictionary *mEntities;
@property (nonatomic) UIColor *mClearColor;

- (void)addEntity:(GhEntity *)entity :(NSString *)name;
- (void)update;
- (void)draw:(UIView *)canvas;
- (void)updateEntities;
- (void)drawEntities:(UIView *)canvas;

@end
