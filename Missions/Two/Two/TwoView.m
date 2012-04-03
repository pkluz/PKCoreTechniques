/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "TwoView.h"

#define BORDER_WIDTH 8.0f
#define BOX_SHADOW_BLUR_SAFE_ZONE 30.0f

@implementation TwoView

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
	
	CGRect box = CGRectMake(200.0f, 200.0f, 400.0f, 400.0f);
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	// Define some colors
	CGFloat redColor[4] = {1.0f, 0.0f, 0.0f, 1.0f};
	CGFloat blueColor[4] = {0.1f, 0.1f, 0.5f, 1.0f};
 
	// TODO 1: Fill the 'box' using blueColor
	
	// TODO 2: Add a drop shadow to your box. 20 points radius. No offset.
 
	// TODO 3: Add a red border to your box. 5 points wide.
}

@end