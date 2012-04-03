/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "GradientFillLinearView.h"
#import <QuartzCore/QuartzCore.h>

@implementation GradientFillLinearView

- (void)drawRect:(CGRect)rect
{ 
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	
    CGFloat colors[8] = {33.0f/255.0f, 102.0f/255.0f, 133.0f/255.0f, 1.0f,		// Dark Blue Color
						138.0f/255.0f, 206.0f/255.0f, 236.0f/255.0f, 1.0f};		// Light Blue Color
	
    CGFloat locations[2] = {0.0f, 1.0f};
	
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, colors, locations, 2);
	
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0.0f, 0.0f), CGPointMake(0.0f, CGRectGetHeight(rect)), kCGGradientDrawsAfterEndLocation|kCGGradientDrawsBeforeStartLocation);
	
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
	
	CGFloat yellow[4] = {1.0f, 1.0f, 0.0f, 1.0f};
	CGContextSetFillColor(context, yellow);
	CGRect yellowRect = CGRectMake(0.0f, 20.0f, 20.0f, 20.0f);
	CGContextFillRect(context, yellowRect);
}

@end