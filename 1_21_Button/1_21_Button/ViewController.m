//
//  ViewController.m
//  1_21_Button
//
//  Created by X on 09/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *myButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.myButton = [UIButton buttonWithType: UIButtonTypeSystem];
    self.myButton.frame = CGRectMake(120.0f,
                                     300.0f,
                                     100.0f,
                                     20.0f);
    [self.myButton setTitle: @"Press me"
                   forState: UIControlStateNormal];
    
    [self.myButton setTitle:@"I'm pressed"
                   forState:UIControlStateHighlighted];
    
    [self.myButton addTarget:self
                      action:@selector(buttonTouchedDown:)
            forControlEvents:UIControlEventTouchDown];
    
    [self.myButton addTarget:self
                      action:@selector(buttonTouchedUpInside:)
            forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.myButton];
                     
}

- (void)buttonTouchedDown:(UIButton *)paramSender
{
    NSLog(@"Button is pressed");
}

- (void)buttonTouchedUpInside:(UIButton *)paramSender
{
    NSLog(@"Button is tapped");
}

@end
