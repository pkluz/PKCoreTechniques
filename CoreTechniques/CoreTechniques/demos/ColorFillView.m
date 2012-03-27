/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "ColorFillView.h"
#import <QuartzCore/QuartzCore.h>

@implementation ColorFillView

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGFloat redColor[4] = {1.0f, 0.0f, 0.0f, 1.0f};
	CGContextSetFillColor(context, redColor);
	CGContextFillRect(context, rect);
}

@end