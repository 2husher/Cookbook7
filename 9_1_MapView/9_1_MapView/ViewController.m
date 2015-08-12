//
//  ViewController.m
//  9_1_MapView
//
//  Created by X on 12/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"
@import MapKit;

@interface ViewController ()
@property (nonatomic, strong) MKMapView *myMapView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    self.myMapView = [[MKMapView alloc]
                      initWithFrame:self.view.bounds];

    self.myMapView.mapType =
    MKMapTypeHybrid;
    //MKMapTypeStandard;
    //MKMapTypeSatellite;

    self.myMapView.autoresizingMask = UIViewAutoresizingFlexibleHeight |
                                      UIViewAutoresizingFlexibleWidth;

    [self.view addSubview:self.myMapView];
}


@end
