//
//  GhSurfaceView.h
//  Groundhog
//
//  Created by Webchimp on 07/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GhRenderThread.h"


@interface GhSurfaceView : UIView

    @property (retain, nonatomic) GhRenderThread *mThread;

- (id)init:(UIViewController *)context;

@end
