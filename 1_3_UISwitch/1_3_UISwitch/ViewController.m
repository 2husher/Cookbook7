//
//  ViewController.m
//  1_3_UISwitch
//
//  Created by X on 07/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.mainSwitch = [[UISwitch alloc] initWithFrame: CGRectZero];
    self.mainSwitch.center = self.view.center;
    [self.view addSubview:self.mainSwitch];
    
    self.mainSwitch.tintColor      = [UIColor redColor];
    self.mainSwitch.onTintColor    = [UIColor brownColor];
    self.mainSwitch.thumbTintColor = [UIColor greenColor];
    
}

@end
