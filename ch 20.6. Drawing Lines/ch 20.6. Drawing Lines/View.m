//
//  View.m
//  ch 20.6. Drawing Lines
//
//  Created by X on 26/09/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "View.h"

@implementation View

- (void)drawRect:(CGRect)rect
{
    /* Set the color that we want to use to draw the line */
    [[UIColor brownColor] set];

    /* Get the current graphics context */
    CGContextRef currentContext = UIGraphicsGetCurrentContext();

    /* Set the width for the lines */
    CGContextSetLineWidth(currentContext,
                          5.0f);
    /* Start the line at this point */
    CGContextMoveToPoint(currentContext,
                         20.0f,
                         20.0f);
    /* And end it at this point */
    CGContextAddLineToPoint(currentContext,
                            100.0f,
                            100.0f);
    /* Extend the line to another point */
    CGContextAddLineToPoint(currentContext,
                            300.0f,
                            100.0f);

    /* Use the context's current color to draw the line */
    CGContextStrokePath(currentContext);

    [self drawRooftopAtTopPointof:CGPointMake(160.0f, 40.0f)
                    textToDisplay:@"Miter"
                         lineJoin:kCGLineJoinMiter];

    [self drawRooftopAtTopPointof:CGPointMake(160.0f, 180.0f)
                    textToDisplay:@"Bevel"
                         lineJoin:kCGLineJoinBevel];
    
    [self drawRooftopAtTopPointof:CGPointMake(160.0f, 320.0f)
                    textToDisplay:@"Round"
                         lineJoin:kCGLineJoinRound];
}

- (void) drawRooftopAtTopPointof:(CGPoint)paramTopPoint
                   textToDisplay:(NSString *)paramText
                        lineJoin:(CGLineJoin)paramLineJoin
{
    /* Set the color that we want to use to draw the line */
    [[UIColor brownColor] set];

    /* Get the current graphics context */
    CGContextRef currentContext = UIGraphicsGetCurrentContext();

    /* Set the line join */
    CGContextSetLineJoin(currentContext,
                         paramLineJoin);

    /* Set the width for the lines */
    CGContextSetLineWidth(currentContext, 20.0f);

    /* Start the line at this point */
    CGContextMoveToPoint(currentContext,
                         paramTopPoint.x - 140,
                         paramTopPoint.y + 100);

    /* And end it at this point */
    CGContextAddLineToPoint(currentContext,
                            paramTopPoint.x,
                            paramTopPoint.y);

    /* Extend the line to another point to make the rooftop */
    CGContextAddLineToPoint(currentContext,
                            paramTopPoint.x + 140,
                            paramTopPoint.y + 100);

    /* Use the context's current color to draw the lines */
    CGContextStrokePath(currentContext);
    /* Draw the text in the rooftop using a black color */

    [[UIColor blackColor] set];
    /* Now draw the text */
    CGPoint drawingPoint = CGPointMake(paramTopPoint.x - 40.0f,
                                       paramTopPoint.y + 60.0f);
    UIFont *font = [UIFont boldSystemFontOfSize:30.0f];

    [paramText drawAtPoint:drawingPoint
            withAttributes:@{NSFontAttributeName : font}];
}

@end
