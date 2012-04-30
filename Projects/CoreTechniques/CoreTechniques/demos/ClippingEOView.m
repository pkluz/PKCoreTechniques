/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 
 // Clip the context and draw.
 */

#import "ClippingEOView.h"

@implementation ClippingEOView

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	UIImage *image = [UIImage imageNamed:@"tombraider.png"];
	
	CGRect centeredImageRect = CGRectMake((CGRectGetWidth(rect)/2.0f)-(image.size.width/2.0f), (CGRectGetHeight(rect)/2.0f)-(image.size.height/2.0f), image.size.width, image.size.height);
	
	UIBezierPath *outterBoundsClipping = [UIBezierPath bezierPathWithRoundedRect:centeredImageRect cornerRadius:20.0f];
	
	CGRect innerRect = CGRectInset(centeredImageRect, 30.0f, 30.0f);
	
	UIBezierPath *innerBoundsClipping = [UIBezierPath bezierPathWithRoundedRect:innerRect cornerRadius:11.0f];

	CGContextSaveGState(context);
	
	CGContextAddPath(context, outterBoundsClipping.CGPath);
	CGContextAddPath(context, innerBoundsClipping.CGPath);
	
	CGContextEOClip(context);
	
	[image drawInRect:centeredImageRect];
	
	CGContextRestoreGState(context);
}

@end