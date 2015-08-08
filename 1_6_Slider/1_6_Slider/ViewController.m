//
//  ViewController.m
//  1_6_Slider
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
    
    self.mySlider = [[UISlider alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 23.0f)];
    
    self.mySlider.center       = self.view.center;
    self.mySlider.minimumValue = 0.0f;
    self.mySlider.maximumValue = 100.0f;
    self.mySlider.value        = self.mySlider.maximumValue / 2.0;
    self.mySlider.continuous   = NO;
    
    [self.view addSubview:self.mySlider];
    
    [self.mySlider addTarget:self
                      action:@selector(sliderValueChanged:)
            forControlEvents:UIControlEventValueChanged];
    
    self.mySlider.minimumTrackTintColor = [UIColor yellowColor];
    self.mySlider.maximumTrackTintColor = [UIColor orangeColor];
    self.mySlider.thumbTintColor        = [UIColor greenColor];
}

- (void) sliderValueChanged: (UISlider *)paramSender
{
    if ([paramSender isEqual:self.mySlider])
    {
        NSLog(@"Slider value is %f", paramSender.value);
    }
}

@end
