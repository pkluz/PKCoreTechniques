/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "TapAndMoveView.h"

enum RedBoxPosition
{
	RedBoxPositionIsLeft = 0,
	RedBoxPositionIsRight = 1
};

@interface TapAndMoveView()
{
	@private
	enum RedBoxPosition _currentPosition;
}

#pragma mark - Private Propertes
@property (nonatomic, strong, readwrite) UIView *redBox;

#pragma mark - Private Methods

@end

@implementation TapAndMoveView

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
	_currentPosition = RedBoxPositionIsLeft;
	
	self.backgroundColor = [UIColor whiteColor];
	
	self.redBox = [[UIView alloc] initWithFrame:CGRectMake(50.0f, 50.0f, 50.0f, 50.0f)];
	self.redBox.backgroundColor = [UIColor redColor];
	
	[self addSubview:self.redBox];
}

#pragma mark - Actions

- (void)didTapView
{
	[UIView animateWithDuration:1.0f animations:^
	{
		if (_currentPosition == RedBoxPositionIsLeft)
		{
			self.redBox.frame = CGRectOffset(self.redBox.frame, 550.0f, 0.0f);
			_currentPosition = RedBoxPositionIsRight;
		}
		else
		{
			self.redBox.frame = CGRectOffset(self.redBox.frame, -550.0f, 0.0f);
			_currentPosition = RedBoxPositionIsLeft;
		}		
	}];
}



@end