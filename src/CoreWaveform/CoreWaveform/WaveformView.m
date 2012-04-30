/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "WaveformView.h"
#include <math.h>

#define SAMPLE_INTERVAL_START 100
#define SAMPLE_INTERVAL_END 800

@interface WaveformView()

#pragma mark - Private Properties
@property (nonatomic, strong, readwrite) UIBezierPath *waveformBezier;

#pragma mark - Private Methods
- (void)commonInitializer;

@end

@implementation WaveformView

@synthesize waveformBezier = _waveformBezier;

#pragma mark - Initialization

- (id)initWithCoder:(NSCoder *)aDecoder
{
	self = [super initWithCoder:aDecoder];
	
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

#pragma mark - Drawing

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];

    CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGFloat yellowColorComponents[4] = {1.0f, 1.0f, 0.0f, 1.0f};
	CGFloat redColorComponents[4] = {1.0f, 0.0f, 0.0f, 1.0f};
	
	CGContextSetFillColor(context, redColorComponents);
	CGContextSetStrokeColor(context, yellowColorComponents);
	
	CGContextFillRect(context, rect);
	
	CGMutablePathRef upperPath = CGPathCreateMutable();
	
    float halfHeight = self.bounds.size.height / 2.0f;
	
	CGMutablePathRef waveFormPath = CGPathCreateMutable();
	CGPathAddPath(waveFormPath, NULL, self.waveformBezier.CGPath);
	
	CGAffineTransform yAxisMirroring = CGAffineTransformIdentity;
	yAxisMirroring = CGAffineTransformTranslate(yAxisMirroring, 0.0, self.bounds.size.height);
	yAxisMirroring = CGAffineTransformScale(yAxisMirroring, 1.0f, -1.0f);
	
	CGPathAddPath(waveFormPath, &yAxisMirroring, upperPath);
	
	CGContextAddPath(context, waveFormPath);
	CGContextClosePath(context);
	
	// CGContextFillPath(context);
	CGContextStrokePath(context);
	
	
	CGPathRelease(upperPath);
	CGPathRelease(waveFormPath);
}

#pragma mark - Stub code.

- (void)commonInitializer
{
	UIBezierPath* bezierPath = [UIBezierPath bezierPath];
	
	[bezierPath moveToPoint: CGPointMake(0.5, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(18.5, 44.5) controlPoint1: CGPointMake(0.5, 74.5) controlPoint2: CGPointMake(3.44, 52.08)];
	[bezierPath addCurveToPoint: CGPointMake(46.5, 68.5) controlPoint1: CGPointMake(33.56, 36.92) controlPoint2: CGPointMake(28.63, 70.01)];
	[bezierPath addCurveToPoint: CGPointMake(62.5, 23.5) controlPoint1: CGPointMake(64.37, 66.99) controlPoint2: CGPointMake(57.23, 22.15)];
	[bezierPath addCurveToPoint: CGPointMake(70.5, 68.5) controlPoint1: CGPointMake(67.77, 24.85) controlPoint2: CGPointMake(63.28, 68.5)];
	[bezierPath addCurveToPoint: CGPointMake(76.5, 23.5) controlPoint1: CGPointMake(77.72, 68.5) controlPoint2: CGPointMake(69.43, 23.5)];
	[bezierPath addCurveToPoint: CGPointMake(85.5, 68.5) controlPoint1: CGPointMake(83.57, 23.5) controlPoint2: CGPointMake(74.79, 68.5)];
	[bezierPath addCurveToPoint: CGPointMake(95.5, 12.5) controlPoint1: CGPointMake(96.21, 68.5) controlPoint2: CGPointMake(87.99, 12.5)];
	[bezierPath addCurveToPoint: CGPointMake(105.5, 68.5) controlPoint1: CGPointMake(103.01, 12.5) controlPoint2: CGPointMake(92.6, 68.5)];
	[bezierPath addCurveToPoint: CGPointMake(125.5, 12.5) controlPoint1: CGPointMake(118.4, 68.5) controlPoint2: CGPointMake(111.75, 12.5)];
	[bezierPath addCurveToPoint: CGPointMake(174.5, 61.5) controlPoint1: CGPointMake(139.25, 12.5) controlPoint2: CGPointMake(137.24, 61.51)];
	[bezierPath addCurveToPoint: CGPointMake(218.5, 23.5) controlPoint1: CGPointMake(211.76, 61.49) controlPoint2: CGPointMake(212.31, 23.5)];
	[bezierPath addCurveToPoint: CGPointMake(235.5, 74.5) controlPoint1: CGPointMake(224.69, 23.5) controlPoint2: CGPointMake(218.1, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(252.5, 61.5) controlPoint1: CGPointMake(252.9, 74.5) controlPoint2: CGPointMake(247.91, 61.5)];
	[bezierPath addCurveToPoint: CGPointMake(260.5, 74.5) controlPoint1: CGPointMake(257.09, 61.5) controlPoint2: CGPointMake(255.01, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(269.5, 54.5) controlPoint1: CGPointMake(265.99, 74.5) controlPoint2: CGPointMake(264.44, 54.43)];
	[bezierPath addCurveToPoint: CGPointMake(277.5, 74.5) controlPoint1: CGPointMake(274.56, 54.57) controlPoint2: CGPointMake(270.6, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(287.5, 44.5) controlPoint1: CGPointMake(284.4, 74.5) controlPoint2: CGPointMake(281.55, 44.5)];
	[bezierPath addCurveToPoint: CGPointMake(294.5, 74.5) controlPoint1: CGPointMake(293.45, 44.5) controlPoint2: CGPointMake(289.68, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(307.5, 32.5) controlPoint1: CGPointMake(299.32, 74.5) controlPoint2: CGPointMake(298.91, 32.5)];
	[bezierPath addCurveToPoint: CGPointMake(315.5, 74.5) controlPoint1: CGPointMake(316.09, 32.5) controlPoint2: CGPointMake(307.71, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(377.5, 12.5) controlPoint1: CGPointMake(323.29, 74.5) controlPoint2: CGPointMake(342.44, 12.5)];
	[bezierPath addCurveToPoint: CGPointMake(434.5, 32.5) controlPoint1: CGPointMake(412.56, 12.5) controlPoint2: CGPointMake(415.84, 32.5)];
	[bezierPath addCurveToPoint: CGPointMake(463.5, 61.5) controlPoint1: CGPointMake(453.16, 32.5) controlPoint2: CGPointMake(445.37, 61.5)];
	[bezierPath addCurveToPoint: CGPointMake(482.5, 32.5) controlPoint1: CGPointMake(481.63, 61.5) controlPoint2: CGPointMake(473.5, 41.5)];
	[bezierPath addCurveToPoint: CGPointMake(500.5, 50.5) controlPoint1: CGPointMake(491.5, 23.5) controlPoint2: CGPointMake(494.5, 56.5)];
	[bezierPath addCurveToPoint: CGPointMake(520.5, 12.5) controlPoint1: CGPointMake(506.5, 44.5) controlPoint2: CGPointMake(513.28, 12.5)];
	[bezierPath addCurveToPoint: CGPointMake(540.5, 50.5) controlPoint1: CGPointMake(527.72, 12.5) controlPoint2: CGPointMake(522.59, 50.5)];
	[bezierPath addCurveToPoint: CGPointMake(572.5, 18.5) controlPoint1: CGPointMake(558.41, 50.5) controlPoint2: CGPointMake(563.35, 9.35)];
	[bezierPath addCurveToPoint: CGPointMake(597.5, 74.5) controlPoint1: CGPointMake(581.65, 27.65) controlPoint2: CGPointMake(573.77, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(628.5, 44.5) controlPoint1: CGPointMake(621.23, 74.5) controlPoint2: CGPointMake(616.32, 44.5)];
	[bezierPath addCurveToPoint: CGPointMake(648.5, 74.5) controlPoint1: CGPointMake(640.68, 44.5) controlPoint2: CGPointMake(632.27, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(662.5, 50.5) controlPoint1: CGPointMake(664.73, 74.5) controlPoint2: CGPointMake(655.58, 50.5)];
	[bezierPath addCurveToPoint: CGPointMake(670.5, 74.5) controlPoint1: CGPointMake(669.42, 50.5) controlPoint2: CGPointMake(660.63, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(734.5, 23.5) controlPoint1: CGPointMake(680.37, 74.5) controlPoint2: CGPointMake(734.5, 46.94)];
	[bezierPath addCurveToPoint: CGPointMake(769.5, 23.5) controlPoint1: CGPointMake(734.5, 0.06) controlPoint2: CGPointMake(742.5, -3.5)];
	[bezierPath addCurveToPoint: CGPointMake(810.5, 50.5) controlPoint1: CGPointMake(796.5, 50.5) controlPoint2: CGPointMake(784.91, 50.5)];
	[bezierPath addCurveToPoint: CGPointMake(842.5, 18.5) controlPoint1: CGPointMake(836.09, 50.5) controlPoint2: CGPointMake(832.71, 18.5)];
	[bezierPath addCurveToPoint: CGPointMake(885.5, 61.5) controlPoint1: CGPointMake(852.29, 18.5) controlPoint2: CGPointMake(885.5, 42.93)];
	[bezierPath addCurveToPoint: CGPointMake(903.5, 54.5) controlPoint1: CGPointMake(885.5, 80.07) controlPoint2: CGPointMake(903.5, 64.5)];
	[bezierPath addCurveToPoint: CGPointMake(910.5, 61.5) controlPoint1: CGPointMake(903.5, 44.5) controlPoint2: CGPointMake(910.5, 48.5)];
	[bezierPath addCurveToPoint: CGPointMake(917.5, 68.5) controlPoint1: CGPointMake(910.5, 74.5) controlPoint2: CGPointMake(914.39, 68.5)];
	[bezierPath addCurveToPoint: CGPointMake(935.5, 50.5) controlPoint1: CGPointMake(920.61, 68.5) controlPoint2: CGPointMake(920.85, 50.5)];
	[bezierPath addCurveToPoint: CGPointMake(953.5, 68.5) controlPoint1: CGPointMake(950.15, 50.5) controlPoint2: CGPointMake(937.37, 68.5)];
	[bezierPath addCurveToPoint: CGPointMake(977.5, 74.5) controlPoint1: CGPointMake(969.63, 68.5) controlPoint2: CGPointMake(977.01, 74.5)];
	[bezierPath addCurveToPoint: CGPointMake(0.5, 74.5) controlPoint1: CGPointMake(977.99, 74.5) controlPoint2: CGPointMake(0.5, 74.5)];
	
	self.waveformBezier = bezierPath;
}

@end