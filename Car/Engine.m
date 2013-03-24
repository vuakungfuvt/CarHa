//
//  Engine.m
//  Car
//
//  Created by DucHa on 3/24/13.
//  Copyright (c) 2013 DucHa. All rights reserved.
//

#import "Engine.h"

@implementation Engine
- (id) init {
    if(self = [super init]){
        self.started = false;
    }
    return self;
}
@end
