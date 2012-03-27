/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "BezierCurveView.h"

@implementation BezierCurveView

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGFloat yellowColor[4] = {1.0f, 1.0f, 0.0f, 1.0f};
	
	UIBezierPath *bezierPath = [UIBezierPath bezierPath];
	
	[bezierPath moveToPoint: CGPointMake(CGRectGetWidth(rect)*0.22f, (CGRectGetHeight(rect)/2.0f)+120.0f)];
	
	[bezierPath addCurveToPoint:CGPointMake((CGRectGetWidth(rect)*0.22f)+171.0f, (CGRectGetHeight(rect)/2.0f)-84.0f) controlPoint1:CGPointMake(CGRectGetWidth(rect)*0.22f, (CGRectGetHeight(rect)/2.0f)+120.0f) controlPoint2:CGPointMake((CGRectGetWidth(rect)*0.22f)+109.0f, (CGRectGetHeight(rect)/2.0f)-92.0f)];

	[bezierPath addCurveToPoint:CGPointMake((CGRectGetWidth(rect)*0.22f)+420.0f, (CGRectGetHeight(rect)/2.0f)-90.0f) controlPoint1:CGPointMake((CGRectGetWidth(rect)*0.22f)+233.0f, (CGRectGetHeight(rect)/2.0f)-75.0f) controlPoint2:CGPointMake((CGRectGetWidth(rect)*0.22f)+375.0f, (CGRectGetHeight(rect)/2.0f)+5.0f)];

	CGContextAddPath(context, bezierPath.CGPath);
	
	CGContextSetStrokeColor(context, yellowColor);
	CGContextSetLineWidth(context, 5.0f);
	
	CGContextStrokePath(context);
}

@end