//
//  ViewController.m
//  1_8_SegmentedControl
//
//  Created by X on 08/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *segments = [[NSArray alloc] initWithObjects: @"iPhone", @"iPad", @"iPod", @"iMac", nil];
    
    self.mySegmentedControl = [[UISegmentedControl alloc] initWithItems:segments];

    self.mySegmentedControl.center = self.view.center;
    self.mySegmentedControl.momentary = YES;
    
    [self.view addSubview:self.mySegmentedControl];
    
    [self.mySegmentedControl addTarget:self
                                action:@selector(segmentChanged:)
                      forControlEvents:UIControlEventValueChanged];
}

- (void)segmentChanged: (UISegmentedControl *)paramSender
{
    if ([paramSender isEqual:self.mySegmentedControl]) {
        NSInteger selectedSegmentIndex = [paramSender selectedSegmentIndex];
        NSString *titleSelectedSegment = [paramSender titleForSegmentAtIndex: selectedSegmentIndex];
        
        NSLog(@"Segment %li with text %@ selected", (long)selectedSegmentIndex, titleSelectedSegment);
    }
}

@end
