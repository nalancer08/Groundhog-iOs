//
//  GhScene.m
//  Groundhog
//
//  Created by Webchimp on 01/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "GhScene.h"

@implementation GhScene

- (id) init {
    self = [super init];
    if ( self != nil ) {
        
        _mClearColor = [Helpers rgbColor:50 :77 :124];
        _mEntities = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)addEntity:(GhEntity *)entity :(NSString *)name {
    [self.mEntities setObject:entity forKey:name];
}

- (void)update {
    [self updateEntities];
}

- (void)draw:(UIView *)canvas {
    
    int width, height;
    width = canvas.frame.size.width;
    height = canvas.frame.size.height;
    
    canvas.backgroundColor = _mClearColor;
    [self drawEntities:canvas];
}

- (void)updateEntities {

    GhEntity *entity = nil;
    for( NSString* key in self.mEntities ) {
        
        entity = [self.mEntities valueForKey:key];
        [entity update];

    }

}

- (void)drawEntities:(UIView *)canvas {
    
    GhEntity *entity = nil;
    for( NSString* key in self.mEntities ) {
        
        entity = [self.mEntities valueForKey:key];
        [entity draw:canvas];
        
    }
}

@end
