//
//  ViewController.m
//  Car
//
//  Created by DucHa on 3/24/13.
//  Copyright (c) 2013 DucHa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    car = [[Car alloc] init];
    engine = [Engine new];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startAndSpeedUp:(id)sender {
    if(car.speed == 0){
        [car start:5];
        engine.started = true;
    }else {
        NSLog(@"Xe dang chay! Ban khong the khoi dong!");
        
    }
}
- (IBAction)speedUp:(id)sender {
    if(engine.started){
        [car speedUp:4.0];

    }else {
        NSLog(@"Xe chua khoi dong");
    }
}
- (IBAction)constantSpeed:(id)sender {
    if(engine.started){
        [car constantSpeed];
    }else {
        NSLog(@"Xe chua khoi dong!");
    }
}
- (IBAction)carBreak:(id)sender {
    if(car.speed > 0) {
        [car carBreak:3.0];
    }
    else {
        NSLog(@"Xe da dung");
    }
}

@end
