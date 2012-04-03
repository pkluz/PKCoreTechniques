/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 27.03.2012
 */

#import "CoverView.h"
#import <QuartzCore/QuartzCore.h>

#define PRESENTATION_REVERSING_ENABLED 1

#define DARK_COLOR [UIColor colorWithRed:0.5f green:0.0f blue:0.0f alpha:1.0f]
#define LIGHT_COLOR [UIColor redColor]

#define SCALING_FACTOR 1.5f

@implementation CoverView

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	
	if (nil != self)
	{
		self.layer.contents = nil;
		self.layer.backgroundColor = DARK_COLOR.CGColor;
		self.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
		self.layer.shadowOpacity = 0.5f;
		self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
		self.layer.shadowRadius = 5.0f;
	}
	
	return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	switch (_currentPresentationState)
	{
		case CoverViewNormal:
			[self presentCoverView];
			break;
			
		case CoverViewIsPresented:
			[self dismissCoverView];
			break;
			
		default:
			break;
	}
}

- (void)presentCoverView
{	
	CABasicAnimation *rotationAndScalingAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
	
	CATransform3D rotateTransform = CATransform3DMakeRotation(M_PI, 0.0f, 1.0f, 0.0f);
	CATransform3D scaleTransform = CATransform3DMakeScale(SCALING_FACTOR, SCALING_FACTOR, 1.0f);
	CATransform3D combinedTransform = CATransform3DConcat(rotateTransform, scaleTransform);
	
#if PRESENTATION_REVERSING_ENABLED
	CALayer *presentationLayer = (CALayer*)[self.layer presentationLayer];
	rotationAndScalingAnimation.fromValue = [NSValue valueWithCATransform3D:[presentationLayer transform]];
#else
	rotationAndScalingAnimation.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
#endif
	
	rotationAndScalingAnimation.toValue = [NSValue valueWithCATransform3D:combinedTransform];
	rotationAndScalingAnimation.duration = 1.0f;
	
	self.layer.transform = combinedTransform;
	
	[self.layer addAnimation:rotationAndScalingAnimation forKey:@"transform"];
	self.layer.backgroundColor = LIGHT_COLOR.CGColor;
	
	CABasicAnimation *colorAnimation = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
	
#if PRESENTATION_REVERSING_ENABLED
	colorAnimation.fromValue = (id)[presentationLayer backgroundColor];
#else
	colorAnimation.fromValue = (id)DARK_COLOR.CGColor;
#endif
	
	colorAnimation.toValue = (id)LIGHT_COLOR.CGColor;
	colorAnimation.fillMode = kCAFillModeForwards;
	colorAnimation.duration = rotationAndScalingAnimation.duration;
	colorAnimation.removedOnCompletion = YES;
	
	[self.layer addAnimation:colorAnimation forKey:@"presentAnimation"];
	
	_currentPresentationState = CoverViewIsPresented;
}

- (void)dismissCoverView
{
	CABasicAnimation *rotationAndScalingAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
	
#if PRESENTATION_REVERSING_ENABLED
	CALayer *presentationLayer = (CALayer*)[self.layer presentationLayer];
	rotationAndScalingAnimation.fromValue = [NSValue valueWithCATransform3D:[presentationLayer transform]];
#else
	CATransform3D rotateTransform = CATransform3DMakeRotation(M_PI, 0.0f, 1.0f, 0.0f);
	CATransform3D scaleTransform = CATransform3DMakeScale(SCALING_FACTOR, SCALING_FACTOR, 1.0f);
	CATransform3D combinedTransform = CATransform3DConcat(rotateTransform, scaleTransform);
	
	rotationAndScalingAnimation.fromValue = [NSValue valueWithCATransform3D:combinedTransform];
#endif
	
	rotationAndScalingAnimation.toValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
	rotationAndScalingAnimation.duration = 1.0f;
	
	self.layer.transform = CATransform3DIdentity;
	
	[self.layer addAnimation:rotationAndScalingAnimation forKey:@"transform"];
	
	self.layer.backgroundColor = DARK_COLOR.CGColor;
	
	CABasicAnimation *colorAnimation = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
	
	
#if PRESENTATION_REVERSING_ENABLED
	colorAnimation.fromValue = (id)[presentationLayer backgroundColor];
#else
	colorAnimation.fromValue = (id)LIGHT_COLOR.CGColor;
#endif
	
	colorAnimation.toValue = (id)DARK_COLOR.CGColor;
	colorAnimation.fillMode = kCAFillModeForwards;
	colorAnimation.duration = rotationAndScalingAnimation.duration;
	colorAnimation.removedOnCompletion = YES;
	
	[self.layer addAnimation:colorAnimation forKey:@"dismissAnimation"];
	
	_currentPresentationState = CoverViewNormal;
}

@end