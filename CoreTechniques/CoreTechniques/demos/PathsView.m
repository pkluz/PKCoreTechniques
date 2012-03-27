/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "PathsView.h"

@implementation PathsView

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGMutablePathRef triangePath = CGPathCreateMutable();
	
	CGFloat yellowColor[4] = {1.0f, 1.0f, 0.0f, 1.0f};

	CGPathMoveToPoint(triangePath, NULL, CGRectGetWidth(rect)/2.0f, CGRectGetHeight(rect)*0.2f);
	CGPathAddLineToPoint(triangePath, NULL, CGRectGetWidth(rect)/4.0f, CGRectGetHeight(rect)*0.7f);
	CGPathAddLineToPoint(triangePath, NULL, CGRectGetWidth(rect)*3.0f/4.0f, CGRectGetHeight(rect)*0.7f);
	
	CGContextAddPath(context, triangePath);
	
	CGContextClosePath(context);
	
	CGContextSetLineWidth(context, 5.0f);
	CGContextSetStrokeColor(context, yellowColor);
	CGContextSetShadow(context, CGSizeMake(3.0f, 3.0f), 4.0f);
	
	CGContextStrokePath(context);
	
	CGPathRelease(triangePath);
}

@end