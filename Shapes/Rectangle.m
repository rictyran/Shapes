//
//  Rectangle.m
//  Shapes
//
//  Created by Richard Tyran on 1/13/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

#import "Rectangle.h"

IB_DESIGNABLE

@implementation Rectangle



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

//Jo's code:

-(void)drawRect:(CGRect)rect {

CGContextRef context = UIGraphicsGetCurrentContext();

//CGContextFillRect(context, rect);

    [[UIColor purpleColor] set];
    
    CGContextMoveToPoint(context, 0, 0);
    
    CGContextMoveToPoint(context, rect.size.width, rect.size.height);
    
    CGContextMoveToPoint(context, 0, 0);
    
    CGContextAddLineToPoint (context, rect.size.width,0);
    CGContextAddLineToPoint (context, rect.size.width,rect.size.height);
    CGContextAddLineToPoint (context, 0,rect.size.height);
    CGContextAddLineToPoint (context, 0,0);
    
    CGContextFillPath(context);
    
}

//- (void)drawRect1:(CGRect)rect {
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context,
//                                     [UIColor blueColor].CGColor);
//    CGRect rectangle = CGRectMake(60,170,200,80);
//    CGContextAddRect(context, rectangle);
//    CGContextStrokePath(context);
//}
//
//- (void)drawRect2:(CGRect)rect {
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context,
//                                     [UIColor redColor].CGColor);
//    CGRect rectangle = CGRectMake(30,85,100,40);
//    CGContextAddRect(context, rectangle);
//    CGContextStrokePath(context);
//}
//
//- (void)drawRect3:(CGRect)rect {
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context,
//                                     [UIColor blackColor].CGColor);
//    CGRect rectangle = CGRectMake(20,60,80,30);
//    CGContextAddRect(context, rectangle);
//    CGContextStrokePath(context);
//}
//
//- (void)drawRect4:(CGRect)rect {
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 4.0);
//    CGContextSetStrokeColorWithColor(context,
//                                     [UIColor greenColor].CGColor);
//    CGRect rectangle = CGRectMake(80,190,150,60);
//    CGContextAddRect(context, rectangle);
//    CGContextStrokePath(context);
//}


@end
