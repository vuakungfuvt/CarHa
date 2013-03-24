//
//  Car.h
//  Car
//
//  Created by DucHa on 3/24/13.
//  Copyright (c) 2013 DucHa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property (nonatomic, assign) float speed;
@property (nonatomic, assign) float accelerate;
@property (nonatomic, assign) float distance;
@property (nonatomic, strong) NSTimer * timer;


- (void) start: (float) acce;
- (void) speedUp: (float) acce;
- (void) constantSpeed;
- (void) carBreak: (float) acce;
- (void) showFigure;
@end
