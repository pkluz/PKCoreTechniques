/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "GradientFillRadialView.h"

@implementation GradientFillRadialView

- (void)drawRect:(CGRect)rect
{
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	UIColor *blue = [UIColor colorWithRed:0.14f green:0.57f blue:1.0f alpha:1.0f];
	UIColor *darkBlue = [UIColor colorWithRed:0.084f green:0.342f blue:0.6f alpha:1.0f];

	NSArray *gradientColors = [NSArray arrayWithObjects:(id)blue.CGColor, (id)darkBlue.CGColor, nil];
	
	CGFloat gradientLocations[] = {0.0f, 1.0f};
	
	// Note: ARC does not support toll-free-bridging, thus we need to do it manually.
	CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)gradientColors, gradientLocations);
	
	CGContextDrawRadialGradient(context, gradient,
								CGPointMake(CGRectGetWidth(rect)/2.0f, CGRectGetHeight(rect)/2.0f),		// Start Center Point
								200.0f,																	// Start Center Radius
								CGPointMake(CGRectGetWidth(rect)/2.0f, CGRectGetHeight(rect)/2.0f),		// End Center Point
								400.0f,																	// End Center Radius
								kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
	
	CGColorSpaceRelease(colorSpace);
}

@end