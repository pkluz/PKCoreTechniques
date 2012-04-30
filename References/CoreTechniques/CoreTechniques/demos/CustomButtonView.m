/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 02.04.2012
 */

#import "CustomButtonView.h"
#import "CustomButton.h"

@implementation CustomButtonView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (nil != self)
	{
		CustomButton *button = [[CustomButton alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 200.0f, 90.0f)];
		[self addSubview:button];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGFloat redColor[4] = {1.0f, 0.5f, 0.0f, 1.0f};
	CGContextSetFillColor(context, redColor);
	CGContextFillRect(context, rect);
}

@end