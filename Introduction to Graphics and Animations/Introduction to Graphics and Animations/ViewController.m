//
//  ViewController.m
//  Introduction to Graphics and Animations
//
//  Created by X on 26/09/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)enumerateFonts
{
    for (NSString *familyName in [UIFont familyNames])
    {
        NSLog(@"Font Family = %@", familyName);
        for (NSString * fontName in [UIFont fontNamesForFamilyName:familyName])
        {
            NSLog(@"\t%@", fontName);
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

//    [self enumerateFonts];

    __unused UIFont *font = [UIFont fontWithName:@"Baskerville-SemiBoldItalic"
                                   size:12.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
