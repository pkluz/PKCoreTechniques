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
	
	// From now on we'll be drawing with red paint!
	[[UIColor redColor] setStroke];
	
	// Create a straight line.
	UIBezierPath *path = [UIBezierPath bezierPath];
	path.lineWidth = 5.0f;
	[path moveToPoint:CGPointMake(50.0f, 50.0f)];
	[path addLineToPoint:CGPointMake(400.0f, 400.0f)];
	[path stroke];
	
	// TODO 1: Turn the line above into a triangle.
}

@end