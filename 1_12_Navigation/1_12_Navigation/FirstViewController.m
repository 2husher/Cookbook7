//
//  FirstViewController.m
//  1_12_Navigation
//
//  Created by X on 10/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (nonatomic, strong) UIButton *displaySecondViewController;
@end

@implementation FirstViewController

- (void)performDisplaySecondViewController:(UIButton *)paramSender
{
    SecondViewController *secondViewController = [[SecondViewController alloc]
                                                  initWithNibName:nil
                                                  bundle:nil];
    [self.navigationController pushViewController:secondViewController
                                         animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"First Controller";
    
    self.displaySecondViewController = [UIButton
                                        buttonWithType:UIButtonTypeSystem ];
    
    [self.displaySecondViewController setTitle:@"Display Second View Controller"
                                      forState:UIControlStateNormal];
    [self.displaySecondViewController sizeToFit];
    self.displaySecondViewController.center = self.view.center;
    
    [self.displaySecondViewController addTarget:self
                                         action:@selector(performDisplaySecondViewController:)
                               forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.displaySecondViewController];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
