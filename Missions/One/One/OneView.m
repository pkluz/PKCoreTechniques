/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "OneView.h"

@implementation OneView

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	
	CGFloat blueColor[4] = {0.0f, 0.0f, 1.0f, 1.0f};
	CGFloat blackColor[4] = {0.0f, 0.0f, 0.0f, 1.0f};
	
	CGMutablePathRef trianglePath = CGPathCreateMutable();
	
	CGPathMoveToPoint(trianglePath, NULL, 100.0f, 400.0f);
	
	CGPathAddLineToPoint(trianglePath, NULL, 400.0f, 400.0f);
	CGPathAddLineToPoint(trianglePath, NULL, 400.0f, 100.0f);
	
	CGPathCloseSubpath(trianglePath);
	
	CGContextAddPath(context, trianglePath);
	
	CGContextSetLineWidth(context, 8.0f);
	CGContextSetStrokeColor(context, blueColor);
	CGContextSetFillColor(context, blackColor);
	
	CGContextDrawPath(context, kCGPathFillStroke);
	
	CGColorSpaceRelease(colorSpace);
}

@end