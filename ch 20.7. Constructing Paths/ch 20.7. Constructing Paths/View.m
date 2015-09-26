//
//  View.m
//  ch 20.7. Constructing Paths
//
//  Created by X on 26/09/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "View.h"

@implementation View

- (void)drawRect:(CGRect)rect
{
//    /* Create the path */
//    CGMutablePathRef path = CGPathCreateMutable();
//
//    /* How big is our screen? We want the X to cover 
//     the whole screen */
//    CGRect screenBounds = [[UIScreen mainScreen] bounds];
//
//    /* Start from top-left */
//    CGPathMoveToPoint(path,
//                      NULL,
//                      screenBounds.origin.x,
//                      screenBounds.origin.y);
//
//    /* Draw a line from top-left to bottom-right of the screen */
//    CGPathAddLineToPoint(path,
//                         NULL,
//                         screenBounds.size.width,
//                         screenBounds.size.height);
//
//    /* Start another line from top-right */
//    CGPathMoveToPoint(path,
//                      NULL,
//                      screenBounds.size.width,
//                      screenBounds.origin.y);
//
//    /* Draw a line from top-right to bottom-left */
//    CGPathAddLineToPoint(path,
//                         NULL,
//                         screenBounds.origin.x,
//                         screenBounds.size.height);
//
//    /* Get the context that the path has to be drawn on */
//    CGContextRef currentContext = UIGraphicsGetCurrentContext();
//
//    /* Add the path to the context so we can
//     draw it later */
//    CGContextAddPath(currentContext, path);
//
//    /* Set the blue color as the stroke color */
//    [[UIColor blueColor] setStroke];
//
//    /* Draw the path with stroke color */
//    CGContextDrawPath(currentContext, kCGPathStroke);
//
//    /* Finally release the path object */
//    CGPathRelease(path);


//    /* Create the path first. Just the path handle. */
//    CGMutablePathRef path = CGPathCreateMutable();
//
//    /* Here are our rectangle boundaries */
//    CGRect rectangle = CGRectMake(10.0f,
//                                  30.0f,
//                                  200.0f,
//                                  300.0f);
//
//    /* Add the rectangle to the path */
//    CGPathAddRect(path,
//                  NULL,
//                  rectangle);
//
//    /* Get the handle to the current context */
//    CGContextRef currentContext = UIGraphicsGetCurrentContext();
//
//    /* Add the path to the context */
//    CGContextAddPath(currentContext, path);
//
//    /* Set the fill color to cornflower blue */
//    [[UIColor colorWithRed:0.20f
//                     green:0.60f
//                      blue:0.80f
//                     alpha:1.0f] setFill];
//
//    /* Set the stroke color to brown */
//    [[UIColor brownColor] setStroke];
//
//    /* Set the line width (for the stroke) to 5 */
//    CGContextSetLineWidth(currentContext, 5.0f);
//
//    /* Stroke and fill the path on the context */
//    CGContextDrawPath(currentContext, kCGPathFillStroke);
//
//    /* Dispose of the path */
//    CGPathRelease(path);


    /* Create the path first. Just the path handle. */
    CGMutablePathRef path = CGPathCreateMutable();

    /* Here are our first rectangle boundaries */
    CGRect rectangle1 = CGRectMake(10.0f,
                                   30.0f,
                                   200.0f,
                                   300.0f);

    /* And the second rectangle */
    CGRect rectangle2 = CGRectMake(40.0f,
                                   100.0f,
                                   90.0f,
                                   300.0f);

    /* Put both rectangles into an array */
    CGRect rectangles[2] = {
        rectangle1, rectangle2
    };

    /* Add the rectangles to the path */
    CGPathAddRects(path,
                   NULL,
                   (const CGRect *)&rectangles, 2);

    /* Get the handle to the current context */
    CGContextRef currentContext = UIGraphicsGetCurrentContext();

    /* Add the path to the context */
    CGContextAddPath(currentContext, path);

    /* Set the fill color to cornflower blue */
    [[UIColor colorWithRed:0.20f
                     green:0.60f
                      blue:0.80f
                     alpha:1.0f] setFill];

    /* Set the stroke color to black */
    [[UIColor blackColor] setStroke];

    /* Set the line width (for the stroke) to 5 */
    CGContextSetLineWidth(currentContext, 5.0f);

    /* Stroke and fill the path on the context */
    CGContextDrawPath(currentContext, kCGPathFillStroke);

    /* Dispose of the path */
    CGPathRelease(path);
}

@end
