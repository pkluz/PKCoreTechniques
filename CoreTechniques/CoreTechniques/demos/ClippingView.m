/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "ClippingView.h"

@implementation ClippingView

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	UIImage *image = [UIImage imageNamed:@"tombraider.png"];
	
	CGRect centeredImageRect = CGRectMake((CGRectGetWidth(rect)/2.0f)-(image.size.width/2.0f), (CGRectGetHeight(rect)/2.0f)-(image.size.height/2.0f), image.size.width, image.size.height);
	
	UIBezierPath *clipPath = [UIBezierPath bezierPathWithRoundedRect:centeredImageRect cornerRadius:20.0f];
	
	CGContextAddPath(context, clipPath.CGPath);
	CGContextClip(context);
	
	[image drawInRect:centeredImageRect];
}

@end