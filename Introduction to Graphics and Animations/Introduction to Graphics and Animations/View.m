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
    /* Load the color */
    UIColor *steelBlueColor =[UIColor colorWithRed:0.3f
                                             green:0.4f
                                              blue:0.6f
                                             alpha:1.0f];

    /* Set the color in the graphical context */
    [steelBlueColor set];

    UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"
                                            size:30.0f];
    NSString *myString = @"I Learn Really Fast";
    
//    [myString drawAtPoint:CGPointMake(20, 180)
//           withAttributes:@{
//                            NSFontAttributeName : helveticaBold
//                            }];

    [myString drawWithRect:CGRectMake(100, /* x */
                                      120, /* y */
                                      100, /* width */
                                      200)
                   options:NSStringDrawingUsesLineFragmentOrigin
                attributes:@{
                             NSFontAttributeName : helveticaBold
                             }
                   context:nil];

    CGColorRef colorRef        = steelBlueColor.CGColor;
    const CGFloat *components  = CGColorGetComponents(colorRef);
    NSUInteger componentsCount = CGColorGetNumberOfComponents(colorRef);

    NSUInteger counter = 0;
    for (counter = 0; counter < componentsCount; counter++)
    {
        NSLog(@"Component %lu = %.02f",
              (unsigned long)counter + 1, components[counter]);
    }

    UIImage *xcodeIcon = [UIImage imageNamed:@"Xcode"];
    if (xcodeIcon != nil)
    {
        NSLog(@"Successfully loaded the image.");
    }
    else
    {
        NSLog(@"Failed to load the image.");
    }

    [xcodeIcon drawAtPoint:CGPointMake(0.0f,
                                       20.0f)];
    [xcodeIcon drawInRect:CGRectMake(50.0f,
                                     10.0f,
                                     40.0f,
                                     35.0f)];

}

@end
