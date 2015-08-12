//
//  ViewController.m
//  2_1_Gravity
//
//  Created by X on 12/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *squareView;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    self.squareView = [[UIView alloc] initWithFrame:CGRectMake(0.0f,
                                                               0.0f,
                                                               100.0f,
                                                               100.0f)];
    self.squareView.backgroundColor = [UIColor redColor];
    self.squareView.center = self.view.center;
    [self.view addSubview:self.squareView];

    self.animator = [[UIDynamicAnimator alloc]
                     initWithReferenceView:self.view];

    UIGravityBehavior *gravity = [[UIGravityBehavior alloc]
                                  initWithItems:@[self.squareView]];

    [self.animator addBehavior:gravity];
}

@end


























