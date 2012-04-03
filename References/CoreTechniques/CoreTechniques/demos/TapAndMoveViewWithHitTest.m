/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 01.04.2012
 */

#import "TapAndMoveViewWithHitTest.h"
#import <QuartzCore/QuartzCore.h>

enum RedBoxPosition
{
	RedBoxPositionIsTopLeft = 0,
	RedBoxPositionIsTopRight = 1,
	RedBoxPositionIsBottomRight = 2,
	RedBoxPositionIsBottomLeft = 3
};

@interface TapAndMoveViewWithHitTest()
{
	@private
	enum RedBoxPosition _currentPosition;
}

#pragma mark - Private Propertes
@property (nonatomic, strong, readwrite) UIView *redBox;

#pragma mark - Private Methods

@end

@implementation TapAndMoveViewWithHitTest

@synthesize redBox = _redBox;

#pragma mark - Initialization

- (id)init
{
	self = [super init];
	
	if (nil != self)
	{
		[self commonInitializer];
	}
	
	return self;
}

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	
	if (nil != self)
	{
		[self commonInitializer];
	}
	
	return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
	self = [super initWithCoder:aDecoder];
	
	if (nil != self)
	{
		[self commonInitializer];
	}
	
	return self;
}

- (void)commonInitializer
{
	_currentPosition = RedBoxPositionIsTopLeft;
	
	self.backgroundColor = [UIColor whiteColor];
	
	self.redBox = [[UIView alloc] initWithFrame:CGRectMake(50.0f, 50.0f, 50.0f, 50.0f)];
	self.redBox.backgroundColor = [UIColor redColor];
	
	[self addSubview:self.redBox];
}

#pragma mark - Actions

- (void)didTapRedBox
{
	[UIView animateWithDuration:1.0f animations:^
	{
		switch (_currentPosition)
		{
			case RedBoxPositionIsTopLeft:
				self.redBox.frame = CGRectOffset(self.redBox.frame, 550.0f, 0.0f);
				self.redBox.backgroundColor = [UIColor yellowColor];
				_currentPosition = RedBoxPositionIsTopRight;
				break;
				
			case RedBoxPositionIsTopRight:
			{
				CGRect expandedRect = CGRectInset(self.redBox.frame, -50.0f, -50.0f);
				CGRect translatedExpandedRect = CGRectOffset(expandedRect, -50.0f, 500.0f);
				self.redBox.frame = translatedExpandedRect;
				
				self.redBox.backgroundColor = [UIColor blueColor];
				_currentPosition = RedBoxPositionIsBottomRight;
			}
				break;
				
			case RedBoxPositionIsBottomRight:
			{
				CGRect contractedRect = CGRectInset(self.redBox.frame, 50.0f, 50.0f);
				CGRect translatedExpandedRect = CGRectOffset(contractedRect, -500.0f, 50.0f);
				self.redBox.frame = translatedExpandedRect;
				
				self.redBox.backgroundColor = [UIColor greenColor];
				_currentPosition = RedBoxPositionIsBottomLeft;
			}
				break;
				
			case RedBoxPositionIsBottomLeft:
				self.redBox.frame = CGRectOffset(self.redBox.frame, 0.0f, -550.0f);
				self.redBox.backgroundColor = [UIColor redColor];
				_currentPosition = RedBoxPositionIsTopLeft;
				break;
				
			default:
				break;
		}
	}];
}

@end