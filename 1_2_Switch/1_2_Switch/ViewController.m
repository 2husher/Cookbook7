//
//  ViewController.m
//  1_2_Switch
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

    self.mainSwitch = [[UISwitch alloc] initWithFrame: CGRectMake(100, 100, 0, 0)];
    
    [self.view addSubview: self.mainSwitch];
    
    //[self.mainSwitch setOn:YES];
    
    if ([self.mainSwitch isOn])
    {
        NSLog(@"Switch is ON");
    }
    else
    {
        NSLog(@"Switch is OFF");
    }
    
    [self.mainSwitch addTarget:self
                        action:@selector(switchIsChanged:)
              forControlEvents:UIControlEventValueChanged];
}

- (void) switchIsChanged: (UISwitch *)paramSender
{
    NSLog(@"Sender is = %@", paramSender);
    
    if ([paramSender isOn])
    {
        NSLog(@"Switch is turned on");
    }
    else
    {
        NSLog(@"Switch is turned off");
    }
}

@end
