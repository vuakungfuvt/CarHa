//
//  Car.m
//  Car
//
//  Created by DucHa on 3/24/13.
//  Copyright (c) 2013 DucHa. All rights reserved.
//

#import "Car.h"

@implementation Car
- (id) init {
    if(self = [super init]) {
        self.distance = 0;
        self.speed = 0;
    }
    return self;
}
- (void) start:(float)acce {
    [self.timer invalidate];
    self.timer = nil;
    self.accelerate = acce;
    if(!self.timer){
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self
                                                    selector:@selector(showFigure)
                                                    userInfo:nil
                                                     repeats:false];
    }else {
        [self.timer invalidate];
    }
    
}

- (void) speedUp:(float)acce {
    [self.timer invalidate];
    self.timer = nil;
    self.accelerate = acce;
    if(!self.timer) {
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self
                                                    selector:@selector(showFigure)
                                                    userInfo:nil
                                                     repeats:TRUE];
    }else {
        [self.timer invalidate];
        self.timer = nil;
    }
}
- (void) constantSpeed {
    [self.timer invalidate];
    self.timer = nil;
    self.accelerate = 0;
    if(!self.timer){
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self
                                                    selector:@selector(showFigure)
                                                    userInfo:nil
                                                     repeats:TRUE];
    } else{
        [self.timer invalidate];
        self.timer = nil;
    }
    
}

- (void) carBreak:(float) acce{
    [self.timer invalidate];
    self.timer = nil;
    if(acce < 0) self.accelerate = acce;
    else self.accelerate = -acce;
    if(!self.timer){
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self
                                                    selector:@selector(showFigure)
                                                    userInfo:nil
                                                     repeats:TRUE];
    } else{
        [self.timer invalidate];
        self.timer = nil;
    }
}

- (void) showFigure{
    if(self.timer == 0){
        NSLog(@"Khoi dong");
        NSLog(@"Gia toc: %f",self.accelerate);
        self.speed += self.accelerate;
        self.distance += self.speed * self.speed / 2 / self.accelerate;
        NSLog(@"Van toc hien tai: %f",self.speed);
        NSLog(@"Quang duong da di: %f",self.distance);
    } else{
        NSLog(@"Gia toc hien tai: %f",self.accelerate);
        float v0 = self.speed;
        self.speed += self.accelerate;
        if(self.accelerate!=0) {
            self.distance += (self.speed * self.speed - v0 * v0) / 2 / self.accelerate;
        } else {
            self.distance +=self.speed;
        }
        NSLog(@"Van toc hien tai: %f",self.speed);
        NSLog(@"Quang duong da di: %f",self.distance);
    }
    if(self.speed <= 0){
        NSLog(@"Da dung lai");
        [self.timer invalidate];
        self.timer = nil;
    }
}
@end
