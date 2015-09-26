//
//  View.m
//  Introduction to Graphics and Animations
//
//  Created by X on 26/09/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "View.h"

@implementation View

- (void)drawRect:(CGRect)rect
{
    UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"
                                            size:40.0f];
    NSString *myString = @"Some String";
    
    [myString drawAtPoint:CGPointMake(40, 180)
           withAttributes:@{
                            NSFontAttributeName : helveticaBold
                            }];
}

@end
