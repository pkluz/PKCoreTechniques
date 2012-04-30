/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "ImageView.h"

@implementation ImageView

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	UIImage *image = [UIImage imageNamed:@"tombraider.png"];
	
	CGRect centeredImageRect = CGRectMake((CGRectGetWidth(rect)/2.0f)-(image.size.width/2.0f), (CGRectGetHeight(rect)/2.0f)-(image.size.height/2.0f), image.size.width, image.size.height);
	[image drawInRect:centeredImageRect];
}

@end