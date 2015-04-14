//
//  Triangle.m
//  Shapes
//
//  Created by Richard Tyran on 1/13/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

#import "Triangle.h"

IB_DESIGNABLE
@implementation Triangle


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.


// Jo's code:

-(void)drawRect:(CGRect)rect {

        
    CGContextRef context = UIGraphicsGetCurrentContext();

    [[UIColor blueColor] set];
    
    CGContextMoveToPoint(context, rect.size.width / 2, 0);
    
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    
    CGContextAddLineToPoint(context, 0, rect.size.height);
    
    CGContextAddLineToPoint(context, rect.size.width /2, 0);
    
    CGContextFillPath(context);
    
}



//-(void)drawRect1:(CGRect)rect
//{
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    
//    CGContextBeginPath(ctx);
//    CGContextMoveToPoint   (ctx, CGRectGetMinX(rect), CGRectGetMinY(rect));  // top left
//    CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMidY(rect));  // mid right
//    CGContextAddLineToPoint(ctx, CGRectGetMinX(rect), CGRectGetMaxY(rect));  // bottom left
//    CGContextClosePath(ctx);
//    
//    CGContextSetRGBFillColor(ctx, 1, 1, 0, 1);
//    CGContextFillPath(ctx);
//}
//
//-(void)drawRect2:(CGRect)rect
//{
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    
//    CGContextBeginPath(ctx);
//    CGContextMoveToPoint   (ctx, CGRectGetMinX(rect), CGRectGetMinY(rect));  // top left
//    CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMidY(rect));  // mid right
//    CGContextAddLineToPoint(ctx, CGRectGetMinX(rect), CGRectGetMaxY(rect));  // bottom left
//    CGContextClosePath(ctx);
//    
//    CGContextSetRGBFillColor(ctx, 1, 1, 0, 1);
//    CGContextFillPath(ctx);
//}
//
//-(void)drawRect3:(CGRect)rect
//{
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    
//    CGContextBeginPath(ctx);
//    CGContextMoveToPoint   (ctx, CGRectGetMinX(rect), CGRectGetMinY(rect));  // top left
//    CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMidY(rect));  // mid right
//    CGContextAddLineToPoint(ctx, CGRectGetMinX(rect), CGRectGetMaxY(rect));  // bottom left
//    CGContextClosePath(ctx);
//    
//    CGContextSetRGBFillColor(ctx, 1, 1, 0, 1);
//    CGContextFillPath(ctx);
//}
//


@end
