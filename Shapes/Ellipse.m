//
//  Ellipse.m
//  Shapes
//
//  Created by Richard Tyran on 1/13/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

#import "Ellipse.h"

IB_DESIGNABLE
@implementation Ellipse

// Jo's easy code:

- (void)drawRect:(CGRect)rect {
//
    CGContextRef context = UIGraphicsGetCurrentContext();
//
    [self.fillColor set];
//
//    CGContextFillEllipseInRect(context, rect);

// The hard way:
    
    CGFloat w = rect.size.width;
    CGFloat h = rect.size.height;
    
    CGFloat xCP = w / 4;
    CGFloat yCP = h / 4;
    
    CGContextMoveToPoint(context, w / 2, 0);
    
    CGContextAddCurveToPoint(context, w - xCP, 0, w, yCP, w, h / 2);
    
    CGContextAddCurveToPoint(context, w, h - yCP, w - xCP, h, w /2, h);

    CGContextAddCurveToPoint(context, xCP, h, 0, h - yCP, 0, h /2);

    CGContextAddCurveToPoint(context, 0, yCP, xCP, 0, w / 2, 0);
    
    CGContextFillPath(context);

}

@end
    
    
    
    
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

//- (void)drawRect1:(CGRect)rect {
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context,
//                                     [UIColor yellowColor].CGColor);
//    CGRect rectangle = CGRectMake(60,170,200,80);
//    CGContextAddEllipseInRect(context, rectangle);
//    CGContextStrokePath(context);
//}
//
//- (void)drawRect2:(CGRect)rect {
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context,
//                                     [UIColor orangeColor].CGColor);
//    CGRect rectangle = CGRectMake(30,85,100,40);
//    CGContextAddEllipseInRect(context, rectangle);
//    CGContextStrokePath(context);
//}
//
//- (void)drawRect3:(CGRect)rect {
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context,
//                                     [UIColor brownColor].CGColor);
//    CGRect rectangle = CGRectMake(15,40,50,20);
//    CGContextAddEllipseInRect(context, rectangle);
//    CGContextStrokePath(context);

