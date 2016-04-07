//
//  GhAnimationSheet.h
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GhImage.h"

@interface GhAnimationSheet : NSObject

@property (retain, nonatomic) GhImage *mImage;
@property (nonatomic) int mWidth;
@property(nonatomic) int mHeight;

- (id)init:(int)id :(int)width :(int)height;
- (int)getWidth;
- (int)getHeight;

@end
