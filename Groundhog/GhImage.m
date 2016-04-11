//
//  GhImage.m
//  Groundhog
//
//  Created by Webchimp on 04/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhImage.h"
#import "GhSystem.h"

@implementation GhImage {
    UIImageView *ja;
}

- (id)init:(NSString *)id {
    
    self = [super init];
    if ( self != nil ) {
        NSLog(@"imagen %@", id);
        UIViewController *context = [[GhSystem getInstance] getContext];
        _mBitmap = [UIImage imageNamed:id];
        _mWidth = self.mBitmap != nil ? self.mBitmap.size.width : 0;
        _mHeight = self.mBitmap != nil ? self.mBitmap.size.height : 0;
        ja = [[UIImageView alloc] init];
    }
    return self;
}

- (int)getWidth {
    return _mWidth;
    
}

- (int)getHeight {
    return _mHeight;
}

- (void)draw:(UIView *)canvas :(int)x :(int)y {
    if (self.mBitmap != nil) {
        UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(x, y, self.mBitmap.size.width, self.mBitmap.size.height)];
        img.image = self.mBitmap;
        [canvas addSubview:img];
    }
}

- (void)drawTitle:(UIView *)canvas :(int)x :(int)y :(int)tile :(int)tileWidth :(int)tileHeight :(BOOL)flipX :(BOOL)flipY {
    if ( self.mBitmap != nil ) {
        CGRect src, dst;
        int srcX, srcY, dstX, dstY;
        int scaleX = flipX ? -1 : 1;
        int scaleY = flipY ? -1 : 1;
        if ( flipX || flipY ) {
            ///
        }
        srcX = (int) floor(tile * tileWidth) % self.mWidth;
        srcY = (int) floor(tile * tileWidth / self.mWidth) * tileHeight;
        src = CGRectMake(srcX, srcY, (srcX + tileWidth), (srcY + tileHeight));
        dstX = x * scaleX - (flipX ? tileWidth : 0);
        dstY = y * scaleY - (flipY ? tileHeight : 0);
        dst = CGRectMake(dstX, dstY, (dstX + tileWidth), (dstY + tileHeight));
        NSLog(@"destinoX == %d & dY = %d", dstX, dstY);
        CGRect la = CGRectMake(0, 0, -128, 70);
        CGSize sprite = CGSizeMake(self.mWidth, self.mHeight);
        /*CGSize size = CGSizeMake(300, 300);
        CGFloat screenScale = [UIScreen mainScreen].scale;
        UIGraphicsBeginImageContextWithOptions(size, NO, screenScale);*/
        
        //CGContextRef context = UIGraphicsGetCurrentContext();
        //NSLog(@"src == %f y %@", src.size.width, self.mBitmap.images);
        //CGImageRef subImage = CGImageCreateWithImageInRect(self.mBitmap.CGImage, src);
        //CGContextDrawImage(context, dst, subImage);
        //CGImageRelease(subImage);
        
        //[canvas setNeedsDisplay];
        //canvas.backgroundColor = [UIColor redColor];
        /*UIView *cosita = [[UIView alloc] init];
        cosita.frame = dst;
        cosita.backgroundColor = [UIColor yellowColor];
        [canvas addSubview:cosita];*/
        
            
            //CGImageRelease(subImage);

            dispatch_sync(dispatch_get_main_queue(), ^{
                //CGContextRef context = UIGraphicsGetCurrentContext();
                //UIImage *subImage = CFBridgingRelease(CGImageCreateWithImageInRect(self.mBitmap.CGImage, la));

                UIGraphicsBeginImageContextWithOptions(sprite, NO, 0);
                [self.mBitmap drawAtPoint:CGPointMake(128, 0)];
                //[self drawInRect:rect];
                UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
                UIGraphicsEndImageContext();
                
                ja.frame = dst;
                ja.image = im;
                [canvas addSubview:ja];
            });

        
        
        [canvas clearsContextBeforeDrawing];
        
        //CALayer *layer = [[CALayer alloc] init];
        
        /*canvas.layer.contents = (__bridge id _Nullable)(self.mBitmap.CGImage);
        canvas.layer.contentsRect = src;
        canvas.layer.contentsGravity = kCAGravityResizeAspect;*/

    }
}

@end
