//
//  AngryBirdView.m
//  AngryBird
//
//  Created by Philip Kluz on 3/20/12.
//  Copyright (c) 2012 nehira.com. All rights reserved.
//

#import "AngryBirdView.h"

@interface AngryBirdView()

- (void)commonInit;

@end

@implementation AngryBirdView

#pragma mark - Initialization

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	
	if (nil != self)
	{
		[self commonInit];
	}
	
	return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
	self = [super initWithCoder:aDecoder];
	
	if (nil != self)
	{
		[self commonInit];
	}
	
	return self;
}

- (id)init
{
	self = [super init];
	
	if (nil != self)
	{
		[self commonInit];
	}
	
	return self;
}

- (void)commonInit
{
	self.backgroundColor = [UIColor clearColor];
}

#pragma mark - Drawing

- (void)drawRect:(CGRect)rect
{
    //// General Declarations
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	/*CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGFloat clearColorComponents[4] = {0.0, 0.0, 0.0, 0.0};
	CGContextSetFillColor(context, clearColorComponents);
	CGContextFillRect(context, rect);
	*/
	//// Color Declarations
	UIColor* black = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
	UIColor* r212g0b46 = [UIColor colorWithRed: 0.79 green: 0 blue: 0.14 alpha: 1];
	UIColor* r252g0b80 = [UIColor colorWithRed: 0.99 green: 0 blue: 0.25 alpha: 1];
	UIColor* rgb0alpha10 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.1];
	UIColor* r143g0b13 = [UIColor colorWithRed: 0.49 green: 0 blue: 0.05 alpha: 1];
	UIColor* r22g196b168 = [UIColor colorWithRed: 0.85 green: 0.72 blue: 0.59 alpha: 1];
	UIColor* white = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
	UIColor* r243g156b33 = [UIColor colorWithRed: 0.94 green: 0.54 blue: 0.1 alpha: 1];
	UIColor* r250g187b33 = [UIColor colorWithRed: 0.98 green: 0.68 blue: 0.1 alpha: 1];
	
	//// Black Bird Background Drawing
	UIBezierPath* blackBirdBackgroundPath = [UIBezierPath bezierPath];
	[blackBirdBackgroundPath moveToPoint: CGPointMake(201.5, 133.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(135, 203) controlPoint1: CGPointMake(201.5, 133.5) controlPoint2: CGPointMake(164.21, 157.79)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(112, 253) controlPoint1: CGPointMake(127.7, 214.3) controlPoint2: CGPointMake(112.61, 250.71)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(97, 221) controlPoint1: CGPointMake(111.39, 255.3) controlPoint2: CGPointMake(97.02, 221.14)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(75.5, 239) controlPoint1: CGPointMake(96.73, 218.66) controlPoint2: CGPointMake(75.97, 237.71)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(108, 267.5) controlPoint1: CGPointMake(75.03, 240.29) controlPoint2: CGPointMake(99.74, 262.89)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(57.5, 243.5) controlPoint1: CGPointMake(116.26, 272.11) controlPoint2: CGPointMake(62.16, 244.83)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(44.5, 271.5) controlPoint1: CGPointMake(52.84, 242.17) controlPoint2: CGPointMake(44.29, 264.81)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(104.5, 280.5) controlPoint1: CGPointMake(44.71, 278.19) controlPoint2: CGPointMake(104.5, 280.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(70.5, 290.5) controlPoint1: CGPointMake(104.5, 280.5) controlPoint2: CGPointMake(71.39, 288.53)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(77.5, 309.5) controlPoint1: CGPointMake(69.61, 292.47) controlPoint2: CGPointMake(77.5, 309.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(103, 294) controlPoint1: CGPointMake(77.5, 309.5) controlPoint2: CGPointMake(104.3, 288.4)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(151, 420) controlPoint1: CGPointMake(101.7, 299.6) controlPoint2: CGPointMake(90.3, 373.97)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(274, 459) controlPoint1: CGPointMake(179.69, 441.75) controlPoint2: CGPointMake(224.74, 454.55)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(405, 430) controlPoint1: CGPointMake(328.96, 463.96) controlPoint2: CGPointMake(370.85, 450.21)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(451.5, 230.5) controlPoint1: CGPointMake(469.75, 391.68) controlPoint2: CGPointMake(480.96, 299.99)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(351.5, 128.5) controlPoint1: CGPointMake(422.04, 161.01) controlPoint2: CGPointMake(351.5, 128.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(260, 51) controlPoint1: CGPointMake(351.5, 128.5) controlPoint2: CGPointMake(312.1, 47.73)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(236.5, 89.5) controlPoint1: CGPointMake(207.9, 54.27) controlPoint2: CGPointMake(236.5, 89.5)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(167, 105) controlPoint1: CGPointMake(236.5, 89.5) controlPoint2: CGPointMake(179.42, 79.11)];
	[blackBirdBackgroundPath addCurveToPoint: CGPointMake(201.5, 133.5) controlPoint1: CGPointMake(154.58, 130.89) controlPoint2: CGPointMake(201.5, 133.5)];
	[blackBirdBackgroundPath closePath];
	[black setFill];
	[blackBirdBackgroundPath fill];
	
	
	
	//// Red Bird Filling Drawing
	UIBezierPath* redBirdFillingPath = [UIBezierPath bezierPath];
	[redBirdFillingPath moveToPoint: CGPointMake(350.5, 138.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(280.5, 62.5) controlPoint1: CGPointMake(350.5, 138.5) controlPoint2: CGPointMake(331.59, 82.6)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(265.5, 103.5) controlPoint1: CGPointMake(229.41, 42.4) controlPoint2: CGPointMake(235.15, 87.44)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(314.5, 125.5) controlPoint1: CGPointMake(295.85, 119.56) controlPoint2: CGPointMake(314.5, 125.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(254.5, 102.5) controlPoint1: CGPointMake(314.5, 125.5) controlPoint2: CGPointMake(278.4, 124.64)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(183.5, 119.5) controlPoint1: CGPointMake(230.6, 80.36) controlPoint2: CGPointMake(153.52, 96.38)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(260.5, 126.5) controlPoint1: CGPointMake(196.52, 129.54) controlPoint2: CGPointMake(260.35, 126.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(157.5, 185.5) controlPoint1: CGPointMake(260.77, 126.5) controlPoint2: CGPointMake(205.1, 125.93)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(110.5, 306.5) controlPoint1: CGPointMake(109.9, 245.07) controlPoint2: CGPointMake(110.5, 306.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(162.5, 408.5) controlPoint1: CGPointMake(110.5, 306.5) controlPoint2: CGPointMake(103.96, 371.82)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(292.5, 444.5) controlPoint1: CGPointMake(221.04, 445.18) controlPoint2: CGPointMake(292.5, 444.5)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(428.5, 392.5) controlPoint1: CGPointMake(292.5, 444.5) controlPoint2: CGPointMake(380.53, 448.64)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(419.5, 193.5) controlPoint1: CGPointMake(468.59, 345.58) controlPoint2: CGPointMake(456.7, 235.48)];
	[redBirdFillingPath addCurveToPoint: CGPointMake(350.5, 138.5) controlPoint1: CGPointMake(382.3, 151.52) controlPoint2: CGPointMake(350.5, 138.5)];
	[redBirdFillingPath closePath];
	[r212g0b46 setFill];
	[redBirdFillingPath fill];
	
	
	
	//// Red Bird Highlight Drawing
	UIBezierPath* redBirdHighlightPath = [UIBezierPath bezierPath];
	[redBirdHighlightPath moveToPoint: CGPointMake(228.16, 92.45)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(181.64, 117.95) controlPoint1: CGPointMake(211.07, 94.65) controlPoint2: CGPointMake(191.16, 109.86)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(228.62, 92.51) controlPoint1: CGPointMake(163.37, 101.47) controlPoint2: CGPointMake(199.26, 89.06)];
	[redBirdHighlightPath addLineToPoint: CGPointMake(228.16, 92.45)];
	[redBirdHighlightPath closePath];
	[redBirdHighlightPath moveToPoint: CGPointMake(280.5, 62.5)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(350.5, 138.5) controlPoint1: CGPointMake(331.59, 82.6) controlPoint2: CGPointMake(350.5, 138.5)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(419.5, 193.5) controlPoint1: CGPointMake(350.5, 138.5) controlPoint2: CGPointMake(382.3, 151.52)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(451.99, 280.21) controlPoint1: CGPointMake(436.34, 212.51) controlPoint2: CGPointMake(447.99, 245.47)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(336, 146) controlPoint1: CGPointMake(438.59, 216.02) controlPoint2: CGPointMake(384.24, 168.75)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(328, 123) controlPoint1: CGPointMake(322.43, 139.6) controlPoint2: CGPointMake(339.4, 143.94)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(242.38, 70.38) controlPoint1: CGPointMake(303.25, 77.54) controlPoint2: CGPointMake(255.47, 68.75)];
	[redBirdHighlightPath addCurveToPoint: CGPointMake(280.5, 62.5) controlPoint1: CGPointMake(242.97, 59.06) controlPoint2: CGPointMake(254.21, 52.16)];
	[redBirdHighlightPath closePath];
	[r252g0b80 setFill];
	[redBirdHighlightPath fill];
	
	
	
	//// Bird Tummy Skin Drawing
	UIBezierPath* birdTummySkinPath = [UIBezierPath bezierPath];
	[birdTummySkinPath moveToPoint: CGPointMake(373.92, 383.73)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(401.72, 415.88) controlPoint1: CGPointMake(386.12, 393.25) controlPoint2: CGPointMake(395.39, 404.19)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(292.5, 444.5) controlPoint1: CGPointMake(353.59, 447.38) controlPoint2: CGPointMake(292.5, 444.5)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(165.53, 410.36) controlPoint1: CGPointMake(292.5, 444.5) controlPoint2: CGPointMake(223.47, 445.16)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(190.08, 383.73) controlPoint1: CGPointMake(171.64, 400.75) controlPoint2: CGPointMake(179.82, 391.73)];
	[birdTummySkinPath addCurveToPoint: CGPointMake(373.92, 383.73) controlPoint1: CGPointMake(240.84, 344.09) controlPoint2: CGPointMake(323.16, 344.09)];
	[birdTummySkinPath closePath];
	[r22g196b168 setFill];
	[birdTummySkinPath fill];
	
	
	
	//// Bird Dot Drawing
	UIBezierPath* birdDotPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(217, 295, 34, 66)];
	[r143g0b13 setFill];
	[birdDotPath fill];
	
	
	
	//// Bird Dot 2 Drawing
	UIBezierPath* birdDot2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(171, 317, 33, 45)];
	[r143g0b13 setFill];
	[birdDot2Path fill];
	
	
	
	//// Black Bird Face Background Drawing
	UIBezierPath* blackBirdFaceBackgroundPath = [UIBezierPath bezierPath];
	[blackBirdFaceBackgroundPath moveToPoint: CGPointMake(392.5, 252.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(359.5, 269.5) controlPoint1: CGPointMake(376.38, 262.24) controlPoint2: CGPointMake(359.5, 269.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(284.5, 220) controlPoint1: CGPointMake(359.5, 269.5) controlPoint2: CGPointMake(291.08, 230.66)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(259.5, 249.5) controlPoint1: CGPointMake(277.92, 209.34) controlPoint2: CGPointMake(259.09, 248.65)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(284.5, 265.5) controlPoint1: CGPointMake(259.91, 250.35) controlPoint2: CGPointMake(280.76, 265.56)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(276.5, 296.5) controlPoint1: CGPointMake(286.9, 265.46) controlPoint2: CGPointMake(276.19, 274.07)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(281.5, 319.5) controlPoint1: CGPointMake(276.67, 308.96) controlPoint2: CGPointMake(283.55, 317.77)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(300.5, 317.5) controlPoint1: CGPointMake(275.76, 324.35) controlPoint2: CGPointMake(294.68, 319.28)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(330.5, 316.5) controlPoint1: CGPointMake(306.32, 315.72) controlPoint2: CGPointMake(335.59, 312.9)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(291.5, 362.5) controlPoint1: CGPointMake(325.41, 320.1) controlPoint2: CGPointMake(291.5, 339.21)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(296.5, 383.5) controlPoint1: CGPointMake(291.5, 362.87) controlPoint2: CGPointMake(292.93, 380.57)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(353.5, 418.5) controlPoint1: CGPointMake(309.03, 393.8) controlPoint2: CGPointMake(347.3, 420.35)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(402.5, 381.5) controlPoint1: CGPointMake(371.7, 413.06) controlPoint2: CGPointMake(400.53, 386.79)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(430.5, 395.5) controlPoint1: CGPointMake(404.1, 377.2) controlPoint2: CGPointMake(419.81, 393.29)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(439.5, 385.5) controlPoint1: CGPointMake(438.81, 397.21) controlPoint2: CGPointMake(439.29, 384.95)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(423.5, 347.5) controlPoint1: CGPointMake(439.98, 386.77) controlPoint2: CGPointMake(433.83, 364.47)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(379.5, 311.5) controlPoint1: CGPointMake(413.17, 330.53) controlPoint2: CGPointMake(379.5, 311.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(417.5, 303.5) controlPoint1: CGPointMake(379.5, 311.5) controlPoint2: CGPointMake(387.21, 300.51)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(423.5, 293.5) controlPoint1: CGPointMake(432.59, 304.99) controlPoint2: CGPointMake(423.19, 302.86)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(417.5, 269.5) controlPoint1: CGPointMake(423.82, 284.07) controlPoint2: CGPointMake(417.9, 269.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(442.5, 259.5) controlPoint1: CGPointMake(416.7, 269.5) controlPoint2: CGPointMake(442.5, 259.5)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(426.5, 227.5) controlPoint1: CGPointMake(442.5, 259.5) controlPoint2: CGPointMake(432.27, 220.94)];
	[blackBirdFaceBackgroundPath addCurveToPoint: CGPointMake(392.5, 252.5) controlPoint1: CGPointMake(423.63, 230.76) controlPoint2: CGPointMake(408.45, 242.86)];
	[blackBirdFaceBackgroundPath closePath];
	[black setFill];
	[blackBirdFaceBackgroundPath fill];
	
	
	
	//// Bird White Eye Right Background Drawing
	UIBezierPath* birdWhiteEyeRightBackgroundPath = [UIBezierPath bezierPath];
	[birdWhiteEyeRightBackgroundPath moveToPoint: CGPointMake(290, 267.5)];
	[birdWhiteEyeRightBackgroundPath addLineToPoint: CGPointMake(355, 290.5)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(352, 305) controlPoint1: CGPointMake(355, 290.5) controlPoint2: CGPointMake(354.75, 303.99)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(338, 312.5) controlPoint1: CGPointMake(349.25, 306.01) controlPoint2: CGPointMake(341.8, 312.36)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(304.5, 312.5) controlPoint1: CGPointMake(334.2, 312.64) controlPoint2: CGPointMake(323.66, 310.77)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(288, 314.5) controlPoint1: CGPointMake(299.71, 312.93) controlPoint2: CGPointMake(290.14, 316.32)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(281, 282.5) controlPoint1: CGPointMake(281.36, 308.85) controlPoint2: CGPointMake(279.38, 291.86)];
	[birdWhiteEyeRightBackgroundPath addCurveToPoint: CGPointMake(290, 267.5) controlPoint1: CGPointMake(283.14, 270.13) controlPoint2: CGPointMake(290, 267.5)];
	[birdWhiteEyeRightBackgroundPath closePath];
	[white setFill];
	[birdWhiteEyeRightBackgroundPath fill];
	
	
	
	//// Bird White Eye Left Background Drawing
	UIBezierPath* birdWhiteEyeLeftBackgroundPath = [UIBezierPath bezierPath];
	[birdWhiteEyeLeftBackgroundPath moveToPoint: CGPointMake(361, 289)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(410, 273) controlPoint1: CGPointMake(363.98, 285.65) controlPoint2: CGPointMake(407.73, 271.97)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(416, 297) controlPoint1: CGPointMake(412.9, 274.31) controlPoint2: CGPointMake(417.59, 289.96)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(380, 304) controlPoint1: CGPointMake(415.4, 299.67) controlPoint2: CGPointMake(385.16, 297.35)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(361, 304) controlPoint1: CGPointMake(374.84, 310.65) controlPoint2: CGPointMake(361, 303.8)];
	[birdWhiteEyeLeftBackgroundPath addCurveToPoint: CGPointMake(361, 289) controlPoint1: CGPointMake(361, 304.2) controlPoint2: CGPointMake(358.74, 291.55)];
	[birdWhiteEyeLeftBackgroundPath closePath];
	[white setFill];
	[birdWhiteEyeLeftBackgroundPath fill];
	
	
	
	//// Bird Shadow Drawing
	UIBezierPath* birdShadowPath = [UIBezierPath bezierPath];
	[birdShadowPath moveToPoint: CGPointMake(201.33, 146.31)];
	[birdShadowPath addCurveToPoint: CGPointMake(160.5, 277.5) controlPoint1: CGPointMake(195.21, 155.9) controlPoint2: CGPointMake(161.77, 211.37)];
	[birdShadowPath addCurveToPoint: CGPointMake(236.5, 383.5) controlPoint1: CGPointMake(159.15, 347.52) controlPoint2: CGPointMake(220.47, 394.94)];
	[birdShadowPath addCurveToPoint: CGPointMake(281.5, 352.5) controlPoint1: CGPointMake(269.24, 360.13) controlPoint2: CGPointMake(281.5, 352.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(259, 326) controlPoint1: CGPointMake(281.5, 352.5) controlPoint2: CGPointMake(258.84, 352.68)];
	[birdShadowPath addCurveToPoint: CGPointMake(296.5, 257) controlPoint1: CGPointMake(259.21, 292.27) controlPoint2: CGPointMake(303.48, 242.49)];
	[birdShadowPath addCurveToPoint: CGPointMake(296, 310) controlPoint1: CGPointMake(293.37, 263.5) controlPoint2: CGPointMake(281.81, 311.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(353.5, 321) controlPoint1: CGPointMake(352.78, 304.02) controlPoint2: CGPointMake(353.5, 321)];
	[birdShadowPath addCurveToPoint: CGPointMake(382, 267) controlPoint1: CGPointMake(353.5, 321) controlPoint2: CGPointMake(351.13, 267.83)];
	[birdShadowPath addCurveToPoint: CGPointMake(423.5, 267.5) controlPoint1: CGPointMake(388.81, 266.82) controlPoint2: CGPointMake(415.34, 260.36)];
	[birdShadowPath addCurveToPoint: CGPointMake(429.5, 347.5) controlPoint1: CGPointMake(468.68, 307.02) controlPoint2: CGPointMake(429.5, 347.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(438.88, 376.88) controlPoint1: CGPointMake(429.5, 347.5) controlPoint2: CGPointMake(441.47, 358.8)];
	[birdShadowPath addCurveToPoint: CGPointMake(428.5, 392.5) controlPoint1: CGPointMake(435.91, 382.62) controlPoint2: CGPointMake(432.46, 387.87)];
	[birdShadowPath addCurveToPoint: CGPointMake(292.5, 444.5) controlPoint1: CGPointMake(380.53, 448.64) controlPoint2: CGPointMake(292.5, 444.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(162.5, 408.5) controlPoint1: CGPointMake(292.5, 444.5) controlPoint2: CGPointMake(221.04, 445.18)];
	[birdShadowPath addCurveToPoint: CGPointMake(110.5, 306.5) controlPoint1: CGPointMake(103.96, 371.82) controlPoint2: CGPointMake(110.5, 306.5)];
	[birdShadowPath addCurveToPoint: CGPointMake(157.5, 185.5) controlPoint1: CGPointMake(110.5, 306.5) controlPoint2: CGPointMake(109.9, 245.07)];
	[birdShadowPath addCurveToPoint: CGPointMake(201.49, 146.05) controlPoint1: CGPointMake(172.02, 167.33) controlPoint2: CGPointMake(187.29, 154.75)];
	[birdShadowPath addLineToPoint: CGPointMake(201.33, 146.31)];
	[birdShadowPath closePath];
	[rgb0alpha10 setFill];
	[birdShadowPath fill];
	
	
	
	//// Bird Right Eye Drawing
	UIBezierPath* birdRightEyePath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(310, 284, 21, 19)];
	[black setFill];
	[birdRightEyePath fill];
	
	
	
	//// Bird Left Eye Drawing
	UIBezierPath* birdLeftEyePath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(366, 286, 14, 13)];
	[black setFill];
	[birdLeftEyePath fill];
	
	
	
	//// Bird Upper Jaw Drawing
	UIBezierPath* birdUpperJawPath = [UIBezierPath bezierPath];
	[birdUpperJawPath moveToPoint: CGPointMake(422, 356)];
	[birdUpperJawPath addCurveToPoint: CGPointMake(358, 309) controlPoint1: CGPointMake(405.78, 327.16) controlPoint2: CGPointMake(362.33, 308.85)];
	[birdUpperJawPath addCurveToPoint: CGPointMake(303, 351) controlPoint1: CGPointMake(345.61, 309.44) controlPoint2: CGPointMake(308.76, 337)];
	[birdUpperJawPath addCurveToPoint: CGPointMake(420, 384) controlPoint1: CGPointMake(293.1, 375.07) controlPoint2: CGPointMake(401.42, 362.42)];
	[birdUpperJawPath addCurveToPoint: CGPointMake(422, 356) controlPoint1: CGPointMake(429.55, 395.1) controlPoint2: CGPointMake(439.17, 386.53)];
	[birdUpperJawPath closePath];
	[r250g187b33 setFill];
	[birdUpperJawPath fill];
	
	
	
	//// Bird Lower Jaw Drawing
	UIBezierPath* birdLowerJawPath = [UIBezierPath bezierPath];
	[birdLowerJawPath moveToPoint: CGPointMake(313.5, 385.5)];
	[birdLowerJawPath addCurveToPoint: CGPointMake(350.5, 372.5) controlPoint1: CGPointMake(317.11, 383.02) controlPoint2: CGPointMake(339.15, 373.22)];
	[birdLowerJawPath addCurveToPoint: CGPointMake(398.5, 380.5) controlPoint1: CGPointMake(365.83, 371.53) controlPoint2: CGPointMake(401.04, 376.72)];
	[birdLowerJawPath addCurveToPoint: CGPointMake(354.5, 409.5) controlPoint1: CGPointMake(391.08, 391.55) controlPoint2: CGPointMake(371.08, 407.93)];
	[birdLowerJawPath addCurveToPoint: CGPointMake(313.5, 385.5) controlPoint1: CGPointMake(347.79, 410.13) controlPoint2: CGPointMake(307.73, 389.47)];
	[birdLowerJawPath closePath];
	[r243g156b33 setFill];
	[birdLowerJawPath fill];
	
	
	
	//// Bird Teeth Drawing
	UIBezierPath* birdTeethPath = [UIBezierPath bezierPath];
	[birdTeethPath moveToPoint: CGPointMake(300, 364)];
	[birdTeethPath addCurveToPoint: CGPointMake(306, 382) controlPoint1: CGPointMake(296.59, 363.17) controlPoint2: CGPointMake(295.96, 384.5)];
	[birdTeethPath addCurveToPoint: CGPointMake(334, 373) controlPoint1: CGPointMake(316.04, 379.5) controlPoint2: CGPointMake(327.4, 373.1)];
	[birdTeethPath addCurveToPoint: CGPointMake(300, 364) controlPoint1: CGPointMake(339.05, 372.92) controlPoint2: CGPointMake(311.15, 366.72)];
	[birdTeethPath closePath];
	[white setFill];
	[birdTeethPath fill];
	
	
	//// Cleanup
	CGColorSpaceRelease(colorSpace);
}

@end
