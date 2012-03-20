//
//  AngryBirdBackgroundView.m
//  AngryBird
//
//  Created by Philip Kluz on 3/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AngryBirdBackgroundView.h"

@implementation AngryBirdBackgroundView

- (void)drawRect:(CGRect)rect
{
    //// General Declarations
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	UIColor *r128g236b251 = [UIColor colorWithRed: 0.43 green: 0.91 blue: 0.98 alpha: 1];
	UIColor *r15g121b159 = [UIColor colorWithRed: 0.05 green: 0.4 blue: 0.56 alpha: 1];
	
	//// Gradient Declarations
	NSArray *r128g236b251TOr15g121b159Colors = [NSArray arrayWithObjects: 
												(id)r128g236b251.CGColor, 
												(id)r15g121b159.CGColor, nil];
	CGFloat r128g236b251TOr15g121b159Locations[] = {0, 1};
	CGGradientRef r128g236b251TOr15g121b159 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)r128g236b251TOr15g121b159Colors, r128g236b251TOr15g121b159Locations);
	
	
	//// Blue Background Drawing
	UIBezierPath* blueBackgroundPath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, CGRectGetWidth(rect), CGRectGetHeight(rect))];
	CGContextSaveGState(context);
	[blueBackgroundPath addClip];
	CGContextDrawRadialGradient(context, r128g236b251TOr15g121b159,
								CGPointMake(CGRectGetWidth(rect)/2.0f, CGRectGetHeight(rect)/2.0f), 95.0f,
								CGPointMake(CGRectGetWidth(rect)/2.0f, (CGRectGetHeight(rect)/2.0f)+50.0f), 700.0f,
								kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
	CGContextRestoreGState(context);
	
	
	//// Cleanup
	CGGradientRelease(r128g236b251TOr15g121b159);
	CGColorSpaceRelease(colorSpace);
}

@end
