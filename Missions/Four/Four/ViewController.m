/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 01.04.2012
 */

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

#define ENABLE_PART_1 1

@interface ViewController ()

@property (nonatomic, weak) CALayer *redBox;

- (void)toggleRedBoxScalingImplicitDemo;
- (void)toggleRedBoxScalingExplicitDemo;

@end

@implementation ViewController

@synthesize redBox = _redBox;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.redBox = [CALayer layer];
	self.redBox.bounds = CGRectMake(0.0f, 0.0f, 200.0f, 200.0f);
	self.redBox.position = CGPointMake(CGRectGetWidth(self.view.frame)/2.0f, CGRectGetHeight(self.view.frame)/2.0f);
	self.redBox.backgroundColor = [UIColor redColor].CGColor;
	
	[self.view.layer addSublayer:self.redBox];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = (UITouch *)[touches anyObject];
	CALayer *hitLayer = [self.view.layer hitTest:[touch locationInView:self.view]];
	
	if ([hitLayer isEqual:self.redBox])
	{
#if ENABLE_PART_1
		[self toggleRedBoxScalingImplicitDemo];
#else
		[self toggleRedBoxScalingExplicitDemo];
#endif
	}
}

- (void)toggleRedBoxScalingImplicitDemo
{
	// TODO 1: Figure out how to disable implicit animation.
#warning TODO 1: Figure out how to disable implicit animation.
	if (CATransform3DIsIdentity(self.redBox.transform))
	{
		self.redBox.transform = CATransform3DMakeScale(2.0f, 2.0f, 1.0f);
	}
	else
	{
		self.redBox.transform = CATransform3DIdentity;
	}
}

- (void)toggleRedBoxScalingExplicitDemo
{
	// TODO 2: Figure out what's wrong. (Hint: Compile and look at it) -> What could be the reason?
#warning TODO 2: Figure out what's wrong. (Hint: Compile and look at it) -> What could be the reason?
	if (CATransform3DIsIdentity(self.redBox.transform))
	{
		CATransform3D rotation = CATransform3DMakeRotation(M_PI, 0.0f, 1.0f, 0.0f);
		CATransform3D scaling = CATransform3DMakeScale(2.0f, 2.0f, 1.0f);
		CATransform3D concatented = CATransform3DConcat(rotation, scaling);
		
		CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
		[animation setFromValue:[NSValue valueWithCATransform3D:self.redBox.transform]];
		[animation setToValue:[NSValue valueWithCATransform3D:concatented]];
		animation.duration = 3.0f;
		
		self.redBox.transform = concatented;
		
		[self.redBox addAnimation:animation forKey:@"transform"];
	}
	else
	{
		self.redBox.transform = CATransform3DIdentity;
	}
}

- (void)viewDidUnload
{
	self.redBox = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
