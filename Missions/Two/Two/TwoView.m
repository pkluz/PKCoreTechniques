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
	
	// Common Stuff:
	CGRect box = CGRectMake(200.0f, 200.0f, 400.0f, 400.0f);
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGFloat blueColor[4] = {0.0f, 0.0f, 1.0f, 1.0f};
	CGFloat blackColorAlpha20[4] = {0.0f, 0.0f, 0.0f, 0.2f};
	
	CGContextSetLineWidth(context, BORDER_WIDTH);
	CGContextSetStrokeColor(context, blueColor);
	CGContextSetFillColor(context, blackColorAlpha20);
	
	// Not-Good-Enough-Way:
	/*
	CGContextSetShadowWithColor(context, CGSizeMake(0.0f, 0.0f), 20.0f, [UIColor blackColor].CGColor);
	CGContextAddRect(context, box);
	CGContextDrawPath(context, kCGPathFillStroke);
	*/
	
	// Good Way:
	CGRect outerClip = CGRectInset(box, -BOX_SHADOW_BLUR_SAFE_ZONE, -BOX_SHADOW_BLUR_SAFE_ZONE);
	CGRect innerClip = CGRectInset(box, -BORDER_WIDTH/2.0f, -BORDER_WIDTH/2.0f);
	
	CGContextSaveGState(context);
	
	CGContextAddRect(context, outerClip);
	CGContextAddRect(context, innerClip);
	
	CGContextEOClip(context);
	
	CGContextAddRect(context, box);
	
	CGContextSetShadowWithColor(context, CGSizeMake(0.0f, 0.0f), 20.0f, [UIColor blackColor].CGColor);
	
	CGContextDrawPath(context, kCGPathFillStroke);
	
	CGContextRestoreGState(context);

	CGContextAddRect(context, box);
	
	CGContextDrawPath(context, kCGPathFillStroke);
}

@end