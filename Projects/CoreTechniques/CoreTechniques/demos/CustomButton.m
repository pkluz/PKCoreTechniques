/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 02.04.2012
 */

#import "CustomButton.h"

@interface CustomButton()

- (UIImage *)_createStandardImage;

@end

@implementation CustomButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
	
    if (nil != self)
	{
		[self setTitle:@"Custom Button" forState:UIControlStateNormal];
		[self setBackgroundImage:[self _createStandardImage] forState:UIControlStateNormal];
    }
	
    return self;
}

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
	[self setNeedsDisplay];
	return YES;
}

#define PADDING 10.5f

- (UIImage *)_createStandardImage
{
	// General Declarations
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	
	// Retina awareness.
	if ([[UIScreen mainScreen] scale] > 0.0)
	{
		UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, [[UIScreen mainScreen] scale]);
	}
	else
	{
		UIGraphicsBeginImageContext(self.bounds.size);
	}
	
	CGContextRef context = UIGraphicsGetCurrentContext();
		
	// Color Declarations
	UIColor *blue = [UIColor colorWithRed:0.14f green:0.57f blue:1.0f alpha:1.0f];
	CGFloat blueHSBA[4];
	[blue getHue: &blueHSBA[0] saturation: &blueHSBA[1] brightness: &blueHSBA[2] alpha: &blueHSBA[3]];
	
	UIColor* darkBlue = [UIColor colorWithHue: blueHSBA[0] saturation: blueHSBA[1] brightness: 0.6 alpha: blueHSBA[3]];
	UIColor* rgb0alpha40 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.4];
	
	// Gradient Declarations
	NSArray* gradientColors = [NSArray arrayWithObjects: (id)blue.CGColor, (id)darkBlue.CGColor, nil];
	CGFloat gradientLocations[] = {0.0f, 1.0f};
	CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)gradientColors, gradientLocations);
	
	// Shadow Declarations
	CGColorRef arrowShadow = darkBlue.CGColor;
	CGSize arrowShadowOffset = CGSizeMake(0, -0);
	CGFloat arrowShadowBlurRadius = 4;
	
	// Rounded Rectangle Drawing
	UIBezierPath *roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(PADDING, PADDING, CGRectGetWidth(self.bounds)-(PADDING*2.0f), CGRectGetHeight(self.bounds)-(PADDING*2.0f)) cornerRadius:4];
	CGContextSaveGState(context);
	CGContextSetShadowWithColor(context, arrowShadowOffset, arrowShadowBlurRadius, arrowShadow);
	CGContextSetFillColorWithColor(context, arrowShadow);
	[roundedRectanglePath fill];
	[roundedRectanglePath addClip];
	CGContextDrawLinearGradient(context, gradient, CGPointMake(CGRectGetMinX(self.bounds), CGRectGetMinY(self.bounds)), CGPointMake(CGRectGetMinX(self.bounds), CGRectGetMaxY(self.bounds)), 0);
	CGContextRestoreGState(context);
	
	[rgb0alpha40 setStroke];
	roundedRectanglePath.lineWidth = 0.5f;
	[roundedRectanglePath stroke];
	
	// Cleanup
	CGGradientRelease(gradient);
	CGColorSpaceRelease(colorSpace);
	
	return UIGraphicsGetImageFromCurrentImageContext();
}

@end
