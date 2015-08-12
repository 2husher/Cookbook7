//
//  ViewController.m
//  2_2_Collisions
//
//  Created by X on 12/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *squareViews;
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

    NSUInteger const NumberOfViews = 2;

    self.squareViews = [[NSMutableArray alloc]
                        initWithCapacity:NumberOfViews];
    NSArray *colors = @[[UIColor redColor], [UIColor greenColor]];

    CGPoint currentCenterPoint = CGPointMake(self.view.bounds.size.width / 2,
                                             50.0f);
    CGSize eachViewSize = CGSizeMake(50.0f, 50.0f);

    for (NSInteger counter = 0; counter < NumberOfViews; counter++) {

        UIView *newView = [[UIView alloc]
                           initWithFrame:CGRectMake(0.0f,
                                                    0.0f,
                                                    eachViewSize.width,
                                                    eachViewSize.height)];

        newView.backgroundColor = colors[counter];
        newView.center = currentCenterPoint;

        currentCenterPoint.y += eachViewSize.height + 50.0f;

        [self.view addSubview:newView];

        [self.squareViews addObject:newView];
    }

    self.animator = [[UIDynamicAnimator alloc]
                     initWithReferenceView:self.view];

    UIGravityBehavior *gravity = [[UIGravityBehavior alloc]
                                  initWithItems:self.squareViews];

    [self.animator addBehavior:gravity];

    UICollisionBehavior *collision = [[UICollisionBehavior alloc]
                                      initWithItems:self.squareViews];
    collision.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:collision];
}


@end

































