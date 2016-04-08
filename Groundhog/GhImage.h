//
//  GhImage.h
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GhImage : NSObject

@property (retain, nonatomic) UIImage *mBitmap;
@property (nonatomic) int mWidth;
@property (nonatomic) int mHeight;

- (id)init:(NSString *)id;
- (int)getWidth;
- (int)getHeight;
- (void)draw:(UIView *)canvas :(int)x :(int)y;
- (void)drawTitle:(UIView *)canvas :(int)x :(int)y :(int)tile :(int)tileWidth :(int)tileHeight :(BOOL)flipX :(BOOL)flipY;


@end
