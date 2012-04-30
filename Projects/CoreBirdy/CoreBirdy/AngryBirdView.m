/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 20.03.2012
 */

#import "AngryBirdView.h"

@interface AngryBirdView()
{
	@private
	CGFloat _scalingFactor;
}

#pragma mark - Private Properties

#pragma mark - Private Methods
- (void)commonInitializer;

@end

@implementation AngryBirdView

#pragma mark - Initialization

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

- (id)init
{
	self = [super init];
	
	if (nil != self)
	{
		[self commonInitializer];
	}
	
	return self;
}

- (void)commonInitializer
{
	self.backgroundColor = [UIColor clearColor];
	
	_scalingFactor = 0.0f;
	CGFloat width = CGRectGetWidth(self.frame);
	CGFloat uniWidth = 512.0f;
	
	_scalingFactor = width/uniWidth;
}

#pragma mark - Drawing

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();

	// Colors
	UIColor* black = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
	UIColor* r212g0b46 = [UIColor colorWithRed: 0.79 green: 0 blue: 0.14 alpha: 1];
	UIColor* r252g0b80 = [UIColor colorWithRed: 0.99 green: 0 blue: 0.25 alpha: 1];
	UIColor* rgb0alpha10 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.1];
	UIColor* r143g0b13 = [UIColor colorWithRed: 0.49 green: 0 blue: 0.05 alpha: 1];
	UIColor* r22g196b168 = [UIColor colorWithRed: 0.85 green: 0.72 blue: 0.59 alpha: 1];
	UIColor* white = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
	UIColor* r243g156b33 = [UIColor colorWithRed: 0.94 green: 0.54 blue: 0.1 alpha: 1];
	UIColor* r250g187b33 = [UIColor colorWithRed: 0.98 green: 0.68 blue: 0.1 alpha: 1];
	
	// Black Bird Background Drawing
	UIBezierPath* blackBirdBackgroundPath = [UIBezierPath bezierPath];
	[blackBirdBackgroundPath moveToPoint: CGPointMake(_scalingFactor*201.5, _scalingFactor*133.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*135, _scalingFactor*203) controlPoint1: CGPointMake(_scalingFactor*201.5, _scalingFactor*133.5) controlPoint2: CGPointMake(_scalingFactor*164.21, _scalingFactor*157.79)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*112, _scalingFactor*253) controlPoint1: CGPointMake(_scalingFactor*127.7, _scalingFactor*214.3) controlPoint2: CGPointMake(_scalingFactor*112.61, _scalingFactor*250.71)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*97, _scalingFactor*221) controlPoint1: CGPointMake(_scalingFactor*111.39, _scalingFactor*255.3) controlPoint2: CGPointMake(_scalingFactor*97.02, _scalingFactor*221.14)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*75.5, _scalingFactor*239) controlPoint1: CGPointMake(_scalingFactor*96.73, _scalingFactor*218.66) controlPoint2: CGPointMake(_scalingFactor*75.97, _scalingFactor*237.71)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*108, _scalingFactor*267.5) controlPoint1: CGPointMake(_scalingFactor*75.03, _scalingFactor*240.29) controlPoint2: CGPointMake(_scalingFactor*99.74, _scalingFactor*262.89)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*57.5, _scalingFactor*243.5) controlPoint1: CGPointMake(_scalingFactor*116.26, _scalingFactor*272.11) controlPoint2: CGPointMake(_scalingFactor*62.16, _scalingFactor*244.83)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*44.5, _scalingFactor*271.5) controlPoint1: CGPointMake(_scalingFactor*52.84, _scalingFactor*242.17) controlPoint2: CGPointMake(_scalingFactor*44.29, _scalingFactor*264.81)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*104.5, _scalingFactor*280.5) controlPoint1: CGPointMake(_scalingFactor*44.71, _scalingFactor*278.19) controlPoint2: CGPointMake(_scalingFactor*104.5, _scalingFactor*280.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*70.5, _scalingFactor*290.5) controlPoint1: CGPointMake(_scalingFactor*104.5, _scalingFactor*280.5) controlPoint2: CGPointMake(_scalingFactor*71.39, _scalingFactor*288.53)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*77.5, _scalingFactor*309.5) controlPoint1: CGPointMake(_scalingFactor*69.61, _scalingFactor*292.47) controlPoint2: CGPointMake(_scalingFactor*77.5, _scalingFactor*309.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*103, _scalingFactor*294) controlPoint1: CGPointMake(_scalingFactor*77.5, _scalingFactor*309.5) controlPoint2: CGPointMake(_scalingFactor*104.3, _scalingFactor*288.4)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*151, _scalingFactor*420) controlPoint1: CGPointMake(_scalingFactor*101.7, _scalingFactor*299.6) controlPoint2: CGPointMake(_scalingFactor*90.3, _scalingFactor*373.97)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*274, _scalingFactor*459) controlPoint1: CGPointMake(_scalingFactor*179.69, _scalingFactor*441.75) controlPoint2: CGPointMake(_scalingFactor*224.74, _scalingFactor*454.55)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*405, _scalingFactor*430) controlPoint1: CGPointMake(_scalingFactor*328.96, _scalingFactor*463.96) controlPoint2: CGPointMake(_scalingFactor*370.85, _scalingFactor*450.21)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*451.5, _scalingFactor*230.5) controlPoint1: CGPointMake(_scalingFactor*469.75, _scalingFactor*391.68) controlPoint2: CGPointMake(_scalingFactor*480.96, _scalingFactor*299.99)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*351.5, _scalingFactor*128.5) controlPoint1: CGPointMake(_scalingFactor*422.04, _scalingFactor*161.01) controlPoint2: CGPointMake(_scalingFactor*351.5, _scalingFactor*128.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*260, _scalingFactor*51) controlPoint1: CGPointMake(_scalingFactor*351.5, _scalingFactor*128.5) controlPoint2: CGPointMake(_scalingFactor*312.1, _scalingFactor*47.73)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*236.5, _scalingFactor*89.5) controlPoint1: CGPointMake(_scalingFactor*207.9, _scalingFactor*54.27) controlPoint2: CGPointMake(_scalingFactor*236.5, _scalingFactor*89.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*167, _scalingFactor*105) controlPoint1: CGPointMake(_scalingFactor*236.5, _scalingFactor*89.5) controlPoint2: CGPointMake(_scalingFactor*179.42, _scalingFactor*79.11)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*201.5, _scalingFactor*133.5) controlPoint1: CGPointMake(_scalingFactor*154.58, _scalingFactor*130.89) controlPoint2: CGPointMake(_scalingFactor*201.5, _scalingFactor*133.5)];
	[blackBirdBackgroundPath closePath];
	[black setFill];
	[blackBirdBackgroundPath fill];
	
	// Red Bird Filling Drawing
	UIBezierPath* redBirdFillingPath = [UIBezierPath bezierPath];
	[redBirdFillingPath moveToPoint: CGPointMake(_scalingFactor*350.5, _scalingFactor*138.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*280.5, _scalingFactor*62.5) controlPoint1: CGPointMake(_scalingFactor*350.5, _scalingFactor*138.5) controlPoint2: CGPointMake(_scalingFactor*331.59, _scalingFactor*82.6)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*265.5, _scalingFactor*103.5) controlPoint1: CGPointMake(_scalingFactor*229.41, _scalingFactor*42.4) controlPoint2: CGPointMake(_scalingFactor*235.15, _scalingFactor*87.44)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*314.5, _scalingFactor*125.5) controlPoint1: CGPointMake(_scalingFactor*295.85, _scalingFactor*119.56) controlPoint2: CGPointMake(_scalingFactor*314.5, _scalingFactor*125.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*254.5, _scalingFactor*102.5) controlPoint1: CGPointMake(_scalingFactor*314.5, _scalingFactor*125.5) controlPoint2: CGPointMake(_scalingFactor*278.4, _scalingFactor*124.64)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*183.5, _scalingFactor*119.5) controlPoint1: CGPointMake(_scalingFactor*230.6, _scalingFactor*80.36) controlPoint2: CGPointMake(_scalingFactor*153.52, _scalingFactor*96.38)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*260.5, _scalingFactor*126.5) controlPoint1: CGPointMake(_scalingFactor*196.52, _scalingFactor*129.54) controlPoint2: CGPointMake(_scalingFactor*260.35, _scalingFactor*126.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*157.5, _scalingFactor*185.5) controlPoint1: CGPointMake(_scalingFactor*260.77, _scalingFactor*126.5) controlPoint2: CGPointMake(_scalingFactor*205.1, _scalingFactor*125.93)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*110.5, _scalingFactor*306.5) controlPoint1: CGPointMake(_scalingFactor*109.9, _scalingFactor*245.07) controlPoint2: CGPointMake(_scalingFactor*110.5, _scalingFactor*306.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*162.5, _scalingFactor*408.5) controlPoint1: CGPointMake(_scalingFactor*110.5, _scalingFactor*306.5) controlPoint2: CGPointMake(_scalingFactor*103.96, _scalingFactor*371.82)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*292.5, _scalingFactor*444.5) controlPoint1: CGPointMake(_scalingFactor*221.04, _scalingFactor*445.18) controlPoint2: CGPointMake(_scalingFactor*292.5, _scalingFactor*444.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*428.5, _scalingFactor*392.5) controlPoint1: CGPointMake(_scalingFactor*292.5, _scalingFactor*444.5) controlPoint2: CGPointMake(_scalingFactor*380.53, _scalingFactor*448.64)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*419.5, _scalingFactor*193.5) controlPoint1: CGPointMake(_scalingFactor*468.59, _scalingFactor*345.58) controlPoint2: CGPointMake(_scalingFactor*456.7, _scalingFactor*235.48)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(_scalingFactor*350.5, _scalingFactor*138.5) controlPoint1: CGPointMake(_scalingFactor*382.3, _scalingFactor*151.52) controlPoint2: CGPointMake(_scalingFactor*350.5, _scalingFactor*138.5)];
	[redBirdFillingPath closePath];
	[r212g0b46 setFill];
	[redBirdFillingPath fill];

	// Red Bird Highlight Drawing
	UIBezierPath* redBirdHighlightPath = [UIBezierPath bezierPath];
	[redBirdHighlightPath moveToPoint: CGPointMake(_scalingFactor*228.16, _scalingFactor*92.45)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(_scalingFactor*181.64, _scalingFactor*117.95) controlPoint1: CGPointMake(_scalingFactor*211.07, _scalingFactor*94.65) controlPoint2: CGPointMake(_scalingFactor*191.16, _scalingFactor*109.86)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(_scalingFactor*228.62, _scalingFactor*92.51) controlPoint1: CGPointMake(_scalingFactor*163.37, _scalingFactor*101.47) controlPoint2: CGPointMake(_scalingFactor*199.26, _scalingFactor*89.06)];
	[redBirdHighlightPath addLineToPoint: CGPointMake(_scalingFactor*228.16, _scalingFactor*92.45)];
	[redBirdHighlightPath closePath];
	[redBirdHighlightPath moveToPoint: CGPointMake(_scalingFactor*280.5, _scalingFactor*62.5)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(_scalingFactor*350.5, _scalingFactor*138.5) controlPoint1: CGPointMake(_scalingFactor*331.59, _scalingFactor*82.6) controlPoint2: CGPointMake(_scalingFactor*350.5, _scalingFactor*138.5)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(_scalingFactor*419.5, _scalingFactor*193.5) controlPoint1: CGPointMake(_scalingFactor*350.5, _scalingFactor*138.5) controlPoint2: CGPointMake(_scalingFactor*382.3, _scalingFactor*151.52)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(_scalingFactor*451.99, _scalingFactor*280.21) controlPoint1: CGPointMake(_scalingFactor*436.34, _scalingFactor*212.51) controlPoint2: CGPointMake(_scalingFactor*447.99, _scalingFactor*245.47)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(_scalingFactor*336, _scalingFactor*146) controlPoint1: CGPointMake(_scalingFactor*438.59, _scalingFactor*216.02) controlPoint2: CGPointMake(_scalingFactor*384.24, _scalingFactor*168.75)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(_scalingFactor*328, _scalingFactor*123) controlPoint1: CGPointMake(_scalingFactor*322.43, _scalingFactor*139.6) controlPoint2: CGPointMake(_scalingFactor*339.4, _scalingFactor*143.94)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(_scalingFactor*242.38, _scalingFactor*70.38) controlPoint1: CGPointMake(_scalingFactor*303.25, _scalingFactor*77.54) controlPoint2: CGPointMake(_scalingFactor*255.47, _scalingFactor*68.75)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(_scalingFactor*280.5, _scalingFactor*62.5) controlPoint1: CGPointMake(_scalingFactor*242.97, _scalingFactor*59.06) controlPoint2: CGPointMake(_scalingFactor*254.21, _scalingFactor*52.16)];
	[redBirdHighlightPath closePath];
	[r252g0b80 setFill];
	[redBirdHighlightPath fill];
	
	// Bird Tummy Skin Drawing
	UIBezierPath* birdTummySkinPath = [UIBezierPath bezierPath];
	[birdTummySkinPath moveToPoint: CGPointMake(_scalingFactor*373.92, _scalingFactor*383.73)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(_scalingFactor*401.72, _scalingFactor*415.88) controlPoint1: CGPointMake(_scalingFactor*386.12, _scalingFactor*393.25) controlPoint2: CGPointMake(_scalingFactor*395.39, _scalingFactor*404.19)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(_scalingFactor*292.5, _scalingFactor*444.5) controlPoint1: CGPointMake(_scalingFactor*353.59, _scalingFactor*447.38) controlPoint2: CGPointMake(_scalingFactor*292.5, _scalingFactor*444.5)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(_scalingFactor*165.53, _scalingFactor*410.36) controlPoint1: CGPointMake(_scalingFactor*292.5, _scalingFactor*444.5) controlPoint2: CGPointMake(_scalingFactor*223.47, _scalingFactor*445.16)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(_scalingFactor*190.08, _scalingFactor*383.73) controlPoint1: CGPointMake(_scalingFactor*171.64, _scalingFactor*400.75) controlPoint2: CGPointMake(_scalingFactor*179.82, _scalingFactor*391.73)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(_scalingFactor*373.92, _scalingFactor*383.73) controlPoint1: CGPointMake(_scalingFactor*240.84, _scalingFactor*344.09) controlPoint2: CGPointMake(_scalingFactor*323.16, _scalingFactor*344.09)];
	[birdTummySkinPath closePath];
	[r22g196b168 setFill];
	[birdTummySkinPath fill];
	
	// Bird Dot Drawing
	UIBezierPath* birdDotPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(_scalingFactor*217, _scalingFactor*295, _scalingFactor*34, _scalingFactor*66)];
	[r143g0b13 setFill];
	[birdDotPath fill];
	
	// Bird Dot 2 Drawing
	UIBezierPath* birdDot2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(_scalingFactor*171, _scalingFactor*317, _scalingFactor*33, _scalingFactor*45)];
	[r143g0b13 setFill];
	[birdDot2Path fill];

	// Black Bird Face Background Drawing
	UIBezierPath* blackBirdFaceBackgroundPath = [UIBezierPath bezierPath];
	[blackBirdFaceBackgroundPath moveToPoint: CGPointMake(_scalingFactor*392.5, _scalingFactor*252.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*359.5, _scalingFactor*269.5) controlPoint1: CGPointMake(_scalingFactor*376.38, _scalingFactor*262.24) controlPoint2: CGPointMake(_scalingFactor*359.5, _scalingFactor*269.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*284.5, _scalingFactor*220) controlPoint1: CGPointMake(_scalingFactor*359.5, _scalingFactor*269.5) controlPoint2: CGPointMake(_scalingFactor*291.08, _scalingFactor*230.66)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*259.5, _scalingFactor*249.5) controlPoint1: CGPointMake(_scalingFactor*277.92, _scalingFactor*209.34) controlPoint2: CGPointMake(_scalingFactor*259.09, _scalingFactor*248.65)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*284.5, _scalingFactor*265.5) controlPoint1: CGPointMake(_scalingFactor*259.91, _scalingFactor*250.35) controlPoint2: CGPointMake(_scalingFactor*280.76, _scalingFactor*265.56)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*276.5, _scalingFactor*296.5) controlPoint1: CGPointMake(_scalingFactor*286.9, _scalingFactor*265.46) controlPoint2: CGPointMake(_scalingFactor*276.19, _scalingFactor*274.07)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*281.5, _scalingFactor*319.5) controlPoint1: CGPointMake(_scalingFactor*276.67, _scalingFactor*308.96) controlPoint2: CGPointMake(_scalingFactor*283.55, _scalingFactor*317.77)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*300.5, _scalingFactor*317.5) controlPoint1: CGPointMake(_scalingFactor*275.76, _scalingFactor*324.35) controlPoint2: CGPointMake(_scalingFactor*294.68, _scalingFactor*319.28)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*330.5, _scalingFactor*316.5) controlPoint1: CGPointMake(_scalingFactor*306.32, _scalingFactor*315.72) controlPoint2: CGPointMake(_scalingFactor*335.59, _scalingFactor*312.9)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*291.5, _scalingFactor*362.5) controlPoint1: CGPointMake(_scalingFactor*325.41, _scalingFactor*320.1) controlPoint2: CGPointMake(_scalingFactor*291.5, _scalingFactor*339.21)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*296.5, _scalingFactor*383.5) controlPoint1: CGPointMake(_scalingFactor*291.5, _scalingFactor*362.87) controlPoint2: CGPointMake(_scalingFactor*292.93, _scalingFactor*380.57)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*353.5, _scalingFactor*418.5) controlPoint1: CGPointMake(_scalingFactor*309.03, _scalingFactor*393.8) controlPoint2: CGPointMake(_scalingFactor*347.3, _scalingFactor*420.35)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*402.5, _scalingFactor*381.5) controlPoint1: CGPointMake(_scalingFactor*371.7, _scalingFactor*413.06) controlPoint2: CGPointMake(_scalingFactor*400.53, _scalingFactor*386.79)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*430.5, _scalingFactor*395.5) controlPoint1: CGPointMake(_scalingFactor*404.1, _scalingFactor*377.2) controlPoint2: CGPointMake(_scalingFactor*419.81, _scalingFactor*393.29)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*439.5, _scalingFactor*385.5) controlPoint1: CGPointMake(_scalingFactor*438.81, _scalingFactor*397.21) controlPoint2: CGPointMake(_scalingFactor*439.29, _scalingFactor*384.95)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*423.5, _scalingFactor*347.5) controlPoint1: CGPointMake(_scalingFactor*439.98, _scalingFactor*386.77) controlPoint2: CGPointMake(_scalingFactor*433.83, _scalingFactor*364.47)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*379.5, _scalingFactor*311.5) controlPoint1: CGPointMake(_scalingFactor*413.17, _scalingFactor*330.53) controlPoint2: CGPointMake(_scalingFactor*379.5, _scalingFactor*311.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*417.5, _scalingFactor*303.5) controlPoint1: CGPointMake(_scalingFactor*379.5, _scalingFactor*311.5) controlPoint2: CGPointMake(_scalingFactor*387.21, _scalingFactor*300.51)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*423.5, _scalingFactor*293.5) controlPoint1: CGPointMake(_scalingFactor*432.59, _scalingFactor*304.99) controlPoint2: CGPointMake(_scalingFactor*423.19, _scalingFactor*302.86)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*417.5, _scalingFactor*269.5) controlPoint1: CGPointMake(_scalingFactor*423.82, _scalingFactor*284.07) controlPoint2: CGPointMake(_scalingFactor*417.9, _scalingFactor*269.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*442.5, _scalingFactor*259.5) controlPoint1: CGPointMake(_scalingFactor*416.7, _scalingFactor*269.5) controlPoint2: CGPointMake(_scalingFactor*442.5, _scalingFactor*259.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*426.5, _scalingFactor*227.5) controlPoint1: CGPointMake(_scalingFactor*442.5, _scalingFactor*259.5) controlPoint2: CGPointMake(_scalingFactor*432.27, _scalingFactor*220.94)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*392.5, _scalingFactor*252.5) controlPoint1: CGPointMake(_scalingFactor*423.63, _scalingFactor*230.76) controlPoint2: CGPointMake(_scalingFactor*408.45, _scalingFactor*242.86)];
	[blackBirdFaceBackgroundPath closePath];
	[black setFill];
	[blackBirdFaceBackgroundPath fill];
	
	// Bird White Eye Right Background Drawing
	UIBezierPath* birdWhiteEyeRightBackgroundPath = [UIBezierPath bezierPath];
	[birdWhiteEyeRightBackgroundPath moveToPoint: CGPointMake(_scalingFactor*290, _scalingFactor*267.5)];
	[birdWhiteEyeRightBackgroundPath addLineToPoint: CGPointMake(_scalingFactor*355, _scalingFactor*290.5)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*352, _scalingFactor*305) controlPoint1: CGPointMake(_scalingFactor*355, _scalingFactor*290.5) controlPoint2: CGPointMake(_scalingFactor*354.75, _scalingFactor*303.99)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*338, _scalingFactor*312.5) controlPoint1: CGPointMake(_scalingFactor*349.25, _scalingFactor*306.01) controlPoint2: CGPointMake(_scalingFactor*341.8, _scalingFactor*312.36)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*304.5, _scalingFactor*312.5) controlPoint1: CGPointMake(_scalingFactor*334.2, _scalingFactor*312.64) controlPoint2: CGPointMake(_scalingFactor*323.66, _scalingFactor*310.77)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*288, _scalingFactor*314.5) controlPoint1: CGPointMake(_scalingFactor*299.71, _scalingFactor*312.93) controlPoint2: CGPointMake(_scalingFactor*290.14, _scalingFactor*316.32)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*281, _scalingFactor*282.5) controlPoint1: CGPointMake(_scalingFactor*281.36, _scalingFactor*308.85) controlPoint2: CGPointMake(_scalingFactor*279.38, _scalingFactor*291.86)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*290, _scalingFactor*267.5) controlPoint1: CGPointMake(_scalingFactor*283.14, _scalingFactor*270.13) controlPoint2: CGPointMake(_scalingFactor*290, _scalingFactor*267.5)];
	[birdWhiteEyeRightBackgroundPath closePath];
	[white setFill];
	[birdWhiteEyeRightBackgroundPath fill];
	
	// Bird White Eye Left Background Drawing
	UIBezierPath* birdWhiteEyeLeftBackgroundPath = [UIBezierPath bezierPath];
	[birdWhiteEyeLeftBackgroundPath moveToPoint: CGPointMake(_scalingFactor*361, _scalingFactor*289)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*410, _scalingFactor*273) controlPoint1: CGPointMake(_scalingFactor*363.98, _scalingFactor*285.65) controlPoint2: CGPointMake(_scalingFactor*407.73, _scalingFactor*271.97)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*416, _scalingFactor*297) controlPoint1: CGPointMake(_scalingFactor*412.9, _scalingFactor*274.31) controlPoint2: CGPointMake(_scalingFactor*417.59, _scalingFactor*289.96)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*380, _scalingFactor*304) controlPoint1: CGPointMake(_scalingFactor*415.4, _scalingFactor*299.67) controlPoint2: CGPointMake(_scalingFactor*385.16, _scalingFactor*297.35)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*361, _scalingFactor*304) controlPoint1: CGPointMake(_scalingFactor*374.84, _scalingFactor*310.65) controlPoint2: CGPointMake(_scalingFactor*361, _scalingFactor*303.8)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(_scalingFactor*361, _scalingFactor*289) controlPoint1: CGPointMake(_scalingFactor*361, _scalingFactor*304.2) controlPoint2: CGPointMake(_scalingFactor*358.74, _scalingFactor*291.55)];
	[birdWhiteEyeLeftBackgroundPath closePath];
	[white setFill];
	[birdWhiteEyeLeftBackgroundPath fill];
	
	// Bird Shadow Drawing
	UIBezierPath* birdShadowPath = [UIBezierPath bezierPath];
	[birdShadowPath moveToPoint: CGPointMake(_scalingFactor*201.33, _scalingFactor*146.31)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*160.5, _scalingFactor*277.5) controlPoint1: CGPointMake(_scalingFactor*195.21, _scalingFactor*155.9) controlPoint2: CGPointMake(_scalingFactor*161.77, _scalingFactor*211.37)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*236.5, _scalingFactor*383.5) controlPoint1: CGPointMake(_scalingFactor*159.15, _scalingFactor*347.52) controlPoint2: CGPointMake(_scalingFactor*220.47, _scalingFactor*394.94)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*281.5, _scalingFactor*352.5) controlPoint1: CGPointMake(_scalingFactor*269.24, _scalingFactor*360.13) controlPoint2: CGPointMake(_scalingFactor*281.5, _scalingFactor*352.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*259, _scalingFactor*326) controlPoint1: CGPointMake(_scalingFactor*281.5, _scalingFactor*352.5) controlPoint2: CGPointMake(_scalingFactor*258.84, _scalingFactor*352.68)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*296.5, _scalingFactor*257) controlPoint1: CGPointMake(_scalingFactor*259.21, _scalingFactor*292.27) controlPoint2: CGPointMake(_scalingFactor*303.48, _scalingFactor*242.49)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*296, _scalingFactor*310) controlPoint1: CGPointMake(_scalingFactor*293.37, _scalingFactor*263.5) controlPoint2: CGPointMake(_scalingFactor*281.81, _scalingFactor*311.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*353.5, _scalingFactor*321) controlPoint1: CGPointMake(_scalingFactor*352.78, _scalingFactor*304.02) controlPoint2: CGPointMake(_scalingFactor*353.5, _scalingFactor*321)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*382, _scalingFactor*267) controlPoint1: CGPointMake(_scalingFactor*353.5, _scalingFactor*321) controlPoint2: CGPointMake(_scalingFactor*351.13, _scalingFactor*267.83)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*423.5, _scalingFactor*267.5) controlPoint1: CGPointMake(_scalingFactor*388.81, _scalingFactor*266.82) controlPoint2: CGPointMake(_scalingFactor*415.34, _scalingFactor*260.36)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*429.5, _scalingFactor*347.5) controlPoint1: CGPointMake(_scalingFactor*468.68, _scalingFactor*307.02) controlPoint2: CGPointMake(_scalingFactor*429.5, _scalingFactor*347.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*438.88, _scalingFactor*376.88) controlPoint1: CGPointMake(_scalingFactor*429.5, _scalingFactor*347.5) controlPoint2: CGPointMake(_scalingFactor*441.47, _scalingFactor*358.8)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*428.5, _scalingFactor*392.5) controlPoint1: CGPointMake(_scalingFactor*435.91, _scalingFactor*382.62) controlPoint2: CGPointMake(_scalingFactor*432.46, _scalingFactor*387.87)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*292.5, _scalingFactor*444.5) controlPoint1: CGPointMake(_scalingFactor*380.53, _scalingFactor*448.64) controlPoint2: CGPointMake(_scalingFactor*292.5, _scalingFactor*444.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*162.5, _scalingFactor*408.5) controlPoint1: CGPointMake(_scalingFactor*292.5, _scalingFactor*444.5) controlPoint2: CGPointMake(_scalingFactor*221.04, _scalingFactor*445.18)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*110.5, _scalingFactor*306.5) controlPoint1: CGPointMake(_scalingFactor*103.96, _scalingFactor*371.82) controlPoint2: CGPointMake(_scalingFactor*110.5, _scalingFactor*306.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*157.5, _scalingFactor*185.5) controlPoint1: CGPointMake(_scalingFactor*110.5, _scalingFactor*306.5) controlPoint2: CGPointMake(_scalingFactor*109.9, _scalingFactor*245.07)];
	[birdShadowPath addCurveToPoint: CGPointMake(_scalingFactor*201.49, _scalingFactor*146.05) controlPoint1: CGPointMake(_scalingFactor*172.02, _scalingFactor*167.33) controlPoint2: CGPointMake(_scalingFactor*187.29, _scalingFactor*154.75)];
	[birdShadowPath addLineToPoint: CGPointMake(_scalingFactor*201.33, _scalingFactor*146.31)];
	[birdShadowPath closePath];
	[rgb0alpha10 setFill];
	[birdShadowPath fill];
	
	// Bird Right Eye Drawing
	UIBezierPath* birdRightEyePath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(_scalingFactor*310, _scalingFactor*284, _scalingFactor*21, _scalingFactor*19)];
	[black setFill];
	[birdRightEyePath fill];
	
	// Bird Left Eye Drawing
	UIBezierPath* birdLeftEyePath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(_scalingFactor*366, _scalingFactor*286, _scalingFactor*14, _scalingFactor*13)];
	[black setFill];
	[birdLeftEyePath fill];
	
	// Bird Upper Jaw Drawing
	UIBezierPath* birdUpperJawPath = [UIBezierPath bezierPath];
	[birdUpperJawPath moveToPoint: CGPointMake(_scalingFactor*422, _scalingFactor*356)];
	[birdUpperJawPath addCurveToPoint: CGPointMake(_scalingFactor*358, _scalingFactor*309) controlPoint1: CGPointMake(_scalingFactor*405.78, _scalingFactor*327.16) controlPoint2: CGPointMake(_scalingFactor*362.33, _scalingFactor*308.85)];
	[birdUpperJawPath addCurveToPoint: CGPointMake(_scalingFactor*303, _scalingFactor*351) controlPoint1: CGPointMake(_scalingFactor*345.61, _scalingFactor*309.44) controlPoint2: CGPointMake(_scalingFactor*308.76, _scalingFactor*337)];
	[birdUpperJawPath addCurveToPoint: CGPointMake(_scalingFactor*420, _scalingFactor*384) controlPoint1: CGPointMake(_scalingFactor*293.1, _scalingFactor*375.07) controlPoint2: CGPointMake(_scalingFactor*401.42, _scalingFactor*362.42)];
	[birdUpperJawPath addCurveToPoint: CGPointMake(_scalingFactor*422, _scalingFactor*356) controlPoint1: CGPointMake(_scalingFactor*429.55, _scalingFactor*395.1) controlPoint2: CGPointMake(_scalingFactor*439.17, _scalingFactor*386.53)];
	[birdUpperJawPath closePath];
	[r250g187b33 setFill];
	[birdUpperJawPath fill];
	
	// Bird Lower Jaw Drawing
	UIBezierPath* birdLowerJawPath = [UIBezierPath bezierPath];
	[birdLowerJawPath moveToPoint: CGPointMake(_scalingFactor*313.5, _scalingFactor*385.5)];
	[birdLowerJawPath addCurveToPoint: CGPointMake(_scalingFactor*350.5, _scalingFactor*372.5) controlPoint1: CGPointMake(_scalingFactor*317.11, _scalingFactor*383.02) controlPoint2: CGPointMake(_scalingFactor*339.15, _scalingFactor*373.22)];
	[birdLowerJawPath addCurveToPoint: CGPointMake(_scalingFactor*398.5, _scalingFactor*380.5) controlPoint1: CGPointMake(_scalingFactor*365.83, _scalingFactor*371.53) controlPoint2: CGPointMake(_scalingFactor*401.04, _scalingFactor*376.72)];
	[birdLowerJawPath addCurveToPoint: CGPointMake(_scalingFactor*354.5, _scalingFactor*409.5) controlPoint1: CGPointMake(_scalingFactor*391.08, _scalingFactor*391.55) controlPoint2: CGPointMake(_scalingFactor*371.08, _scalingFactor*407.93)];
	[birdLowerJawPath addCurveToPoint: CGPointMake(_scalingFactor*313.5, _scalingFactor*385.5) controlPoint1: CGPointMake(_scalingFactor*347.79, _scalingFactor*410.13) controlPoint2: CGPointMake(_scalingFactor*307.73, _scalingFactor*389.47)];
	[birdLowerJawPath closePath];
	[r243g156b33 setFill];
	[birdLowerJawPath fill];
	
	// Bird Teeth Drawing
	UIBezierPath* birdTeethPath = [UIBezierPath bezierPath];
	[birdTeethPath moveToPoint: CGPointMake(_scalingFactor*300, _scalingFactor*364)];
	[birdTeethPath addCurveToPoint: CGPointMake(_scalingFactor*306, _scalingFactor*382) controlPoint1: CGPointMake(_scalingFactor*296.59, _scalingFactor*363.17) controlPoint2: CGPointMake(_scalingFactor*295.96, _scalingFactor*384.5)];
	[birdTeethPath addCurveToPoint: CGPointMake(_scalingFactor*334, _scalingFactor*373) controlPoint1: CGPointMake(_scalingFactor*316.04, _scalingFactor*379.5) controlPoint2: CGPointMake(_scalingFactor*327.4, _scalingFactor*373.1)];
	[birdTeethPath addCurveToPoint: CGPointMake(_scalingFactor*300, _scalingFactor*364) controlPoint1: CGPointMake(_scalingFactor*339.05, _scalingFactor*372.92) controlPoint2: CGPointMake(_scalingFactor*311.15, _scalingFactor*366.72)];
	[birdTeethPath closePath];
	[white setFill];
	[birdTeethPath fill];

	// Cleanup
	CGColorSpaceRelease(colorSpace);
}

@end