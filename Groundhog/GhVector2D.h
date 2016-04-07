//
//  GhVector2D.h
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GhVector2D : NSObject

@property (nonatomic) float x;
@property (nonatomic) float y;


- (id)init:(float)x :(float)y;
- (void)set:(float)x :(float)y;

@end
