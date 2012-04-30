/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 20.03.2012
 */

#import "AngryBirdBackgroundView.h"

@implementation AngryBirdBackgroundView

#pragma mark - Drawing

- (void)drawRect:(CGRect)rect
{
	CGFloat scalingFactorX = CGRectGetWidth(rect)/1024.0f;
	CGFloat scalingFactorY = CGRectGetHeight(rect)/768.0f;

	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	// Colors
	UIColor *r15g121b159 = [UIColor colorWithRed:0.06f green:0.47f blue:0.62f alpha:1.0f];
	UIColor *r128g236b251 = [UIColor colorWithRed:0.5f green:0.93f blue:0.98f alpha:1.0f];
	UIColor *rgb0alpha10 = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.1f];
	UIColor *rgb255 = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
	UIColor *rgb240 = [UIColor colorWithRed:0.94f green:0.94f blue:0.94f alpha:1.0f];
	
	// Gradients
	NSArray *skyBackgroundColors = [NSArray arrayWithObjects: 
									(id)r15g121b159.CGColor, 
									(id)r128g236b251.CGColor, nil];
	CGFloat skyBackgroundLocations[] = {0, 1};
	CGGradientRef skyBackground = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)skyBackgroundColors, skyBackgroundLocations);
	
	// Background
	UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(scalingFactorX*0, scalingFactorX*0, scalingFactorX*1024, scalingFactorY*768)];
	CGContextSaveGState(context);
	[rectanglePath addClip];
	CGContextDrawLinearGradient(context, skyBackground, CGPointMake(scalingFactorX*512, -scalingFactorX*0), CGPointMake(scalingFactorX*512, scalingFactorY*768), scalingFactorX*0);
	CGContextRestoreGState(context);
	
	// Sunbeams Drawing
	UIBezierPath *sunbeamsPath = [UIBezierPath bezierPath];
	[sunbeamsPath moveToPoint: CGPointMake(scalingFactorX*836.0f, scalingFactorY*0.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*615.0f, scalingFactorY*513.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*625.0f, scalingFactorY*517.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*1024.0f, scalingFactorY*4.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*1024.0f, scalingFactorY*209.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*694.0f, scalingFactorY*558.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*700.0f, scalingFactorY*564.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*702.0f, scalingFactorY*565.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*1024.0f, scalingFactorY*359.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*1024.0f, scalingFactorY*541.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*758.0f, scalingFactorY*639.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*765.0f, scalingFactorY*653.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*1024.0f, scalingFactorY*627.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*1024.0f, scalingFactorY*768.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*0.0f, scalingFactorY*768.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*0.0f, scalingFactorY*627.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*260.0f, scalingFactorY*651.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*268.0f, scalingFactorY*634.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*0.0f, scalingFactorY*541.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*0.0f, scalingFactorY*359.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*322.0f, scalingFactorY*565.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*322.0f, scalingFactorY*565.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*338.0f, scalingFactorY*552.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*0.0f, scalingFactorY*157.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*0.0f, scalingFactorY*0.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*106.0f, scalingFactorY*0.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*414.0f, scalingFactorY*512.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*430.0f, scalingFactorY*507.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*319.0f, scalingFactorY*0.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*524.0f, scalingFactorY*0.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*524.0f, scalingFactorY*496.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*537.0f, scalingFactorY*496.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*679.0f, scalingFactorY*0.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*836.0f, scalingFactorY*0.0f)];
	[sunbeamsPath addLineToPoint: CGPointMake(scalingFactorX*836.0f, scalingFactorY*0.0f)];
	[sunbeamsPath closePath];
	[rgb0alpha10 setFill];
	[sunbeamsPath fill];

	// Right Clouds Drawing
	UIBezierPath* rightCloudsPath = [UIBezierPath bezierPath];
	[rightCloudsPath moveToPoint: CGPointMake(scalingFactorX*1066.7, scalingFactorY*scalingFactorX*645.58)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*1066.7, scalingFactorY*scalingFactorX*689.42) controlPoint1: CGPointMake(scalingFactorX*1083.1, scalingFactorY*scalingFactorX*657.69) controlPoint2: CGPointMake(scalingFactorX*1083.1, scalingFactorY*scalingFactorX*677.31)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*1027, scalingFactorY*scalingFactorX*697.61) controlPoint1: CGPointMake(scalingFactorX*1055.93, scalingFactorY*scalingFactorX*697.37) controlPoint2: CGPointMake(scalingFactorX*1040.78, scalingFactorY*scalingFactorX*700.1)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*1025.07, scalingFactorY*scalingFactorX*707.02) controlPoint1: CGPointMake(scalingFactorX*1026.98, scalingFactorY*scalingFactorX*700.8) controlPoint2: CGPointMake(scalingFactorX*1026.34, scalingFactorY*scalingFactorX*703.98)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*1044.5, scalingFactorY*scalingFactorX*718.19) controlPoint1: CGPointMake(scalingFactorX*1032.1, scalingFactorY*scalingFactorX*709.73) controlPoint2: CGPointMake(scalingFactorX*1038.68, scalingFactorY*scalingFactorX*713.46)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*1044.5, scalingFactorY*scalingFactorX*798.81) controlPoint1: CGPointMake(scalingFactorX*1071.83, scalingFactorY*scalingFactorX*740.45) controlPoint2: CGPointMake(scalingFactorX*1071.83, scalingFactorY*scalingFactorX*776.55)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*945.5, scalingFactorY*scalingFactorX*798.81) controlPoint1: CGPointMake(scalingFactorX*1017.16, scalingFactorY*scalingFactorX*821.06) controlPoint2: CGPointMake(scalingFactorX*972.84, scalingFactorY*scalingFactorX*821.06)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*930.19, scalingFactorY*scalingFactorX*780.08) controlPoint1: CGPointMake(scalingFactorX*938.71, scalingFactorY*scalingFactorX*793.28) controlPoint2: CGPointMake(scalingFactorX*933.61, scalingFactorY*scalingFactorX*786.89)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*904.2, scalingFactorY*scalingFactorX*776.8) controlPoint1: CGPointMake(scalingFactorX*921.39, scalingFactorY*scalingFactorX*781.19) controlPoint2: CGPointMake(scalingFactorX*912.14, scalingFactorY*scalingFactorX*780.09)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*898.63, scalingFactorY*scalingFactorX*782.88) controlPoint1: CGPointMake(scalingFactorX*902.76, scalingFactorY*scalingFactorX*778.99) controlPoint2: CGPointMake(scalingFactorX*900.9, scalingFactorY*scalingFactorX*781.04)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*853.37, scalingFactorY*scalingFactorX*782.88) controlPoint1: CGPointMake(scalingFactorX*886.13, scalingFactorY*scalingFactorX*793.04) controlPoint2: CGPointMake(scalingFactorX*865.87, scalingFactorY*scalingFactorX*793.04)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*853.37, scalingFactorY*scalingFactorX*746.12) controlPoint1: CGPointMake(scalingFactorX*840.88, scalingFactorY*scalingFactorX*772.73) controlPoint2: CGPointMake(scalingFactorX*840.88, scalingFactorY*scalingFactorX*756.27)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*889.02, scalingFactorY*scalingFactorX*740.74) controlPoint1: CGPointMake(scalingFactorX*863.01, scalingFactorY*scalingFactorX*738.28) controlPoint2: CGPointMake(scalingFactorX*877.27, scalingFactorY*scalingFactorX*736.49)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*896.28, scalingFactorY*scalingFactorX*733.55) controlPoint1: CGPointMake(scalingFactorX*890.83, scalingFactorY*scalingFactorX*738.15) controlPoint2: CGPointMake(scalingFactorX*893.25, scalingFactorY*scalingFactorX*735.72)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*936.55, scalingFactorY*scalingFactorX*727.12) controlPoint1: CGPointMake(scalingFactorX*907.17, scalingFactorY*scalingFactorX*725.78) controlPoint2: CGPointMake(scalingFactorX*922.95, scalingFactorY*scalingFactorX*723.63)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*945.5, scalingFactorY*scalingFactorX*718.19) controlPoint1: CGPointMake(scalingFactorX*939.1, scalingFactorY*scalingFactorX*723.97) controlPoint2: CGPointMake(scalingFactorX*942.09, scalingFactorY*scalingFactorX*720.97)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*964.07, scalingFactorY*scalingFactorX*707.35) controlPoint1: CGPointMake(scalingFactorX*951.08, scalingFactorY*scalingFactorX*713.65) controlPoint2: CGPointMake(scalingFactorX*957.37, scalingFactorY*scalingFactorX*710.04)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*971.52, scalingFactorY*scalingFactorX*677.7) controlPoint1: CGPointMake(scalingFactorX*959.73, scalingFactorY*scalingFactorX*697.38) controlPoint2: CGPointMake(scalingFactorX*962.21, scalingFactorY*scalingFactorX*685.72)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*995.09, scalingFactorY*scalingFactorX*669.5) controlPoint1: CGPointMake(scalingFactorX*978.02, scalingFactorY*scalingFactorX*672.1) controlPoint2: CGPointMake(scalingFactorX*986.58, scalingFactorY*scalingFactorX*669.37)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*1007.3, scalingFactorY*scalingFactorX*645.58) controlPoint1: CGPointMake(scalingFactorX*994.34, scalingFactorY*scalingFactorX*660.92) controlPoint2: CGPointMake(scalingFactorX*998.41, scalingFactorY*scalingFactorX*652.14)];
	[rightCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*1066.7, scalingFactorY*scalingFactorX*645.58) controlPoint1: CGPointMake(scalingFactorX*1023.7, scalingFactorY*scalingFactorX*633.47) controlPoint2: CGPointMake(scalingFactorX*1050.3, scalingFactorY*scalingFactorX*633.47)];
	[rightCloudsPath closePath];
	[rgb255 setFill];
	[rightCloudsPath fill];
	
	// Left Clouds Drawing
	UIBezierPath* leftCloudsPath = [UIBezierPath bezierPath];
	[leftCloudsPath moveToPoint: CGPointMake(scalingFactorX*15.95, scalingFactorY*scalingFactorX*650.05)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*22.56, scalingFactorY*scalingFactorX*678.3) controlPoint1: CGPointMake(scalingFactorX*23.59, scalingFactorY*scalingFactorX*657.7) controlPoint2: CGPointMake(scalingFactorX*25.79, scalingFactorY*scalingFactorX*668.71)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*36.48, scalingFactorY*scalingFactorX*686.67) controlPoint1: CGPointMake(scalingFactorX*27.65, scalingFactorY*scalingFactorX*679.8) controlPoint2: CGPointMake(scalingFactorX*32.46, scalingFactorY*scalingFactorX*682.59)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*45.04, scalingFactorY*scalingFactorX*702.01) controlPoint1: CGPointMake(scalingFactorX*40.81, scalingFactorY*scalingFactorX*691.06) controlPoint2: CGPointMake(scalingFactorX*43.66, scalingFactorY*scalingFactorX*696.39)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*80.65, scalingFactorY*scalingFactorX*714.16) controlPoint1: CGPointMake(scalingFactorX*57.9, scalingFactorY*scalingFactorX*701.8) controlPoint2: CGPointMake(scalingFactorX*70.84, scalingFactorY*scalingFactorX*705.84)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*90.52, scalingFactorY*scalingFactorX*726.14) controlPoint1: CGPointMake(scalingFactorX*84.87, scalingFactorY*scalingFactorX*717.73) controlPoint2: CGPointMake(scalingFactorX*88.16, scalingFactorY*scalingFactorX*721.8)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*186.18, scalingFactorY*scalingFactorX*730.42) controlPoint1: CGPointMake(scalingFactorX*119.6, scalingFactorY*scalingFactorX*715.36) controlPoint2: CGPointMake(scalingFactorX*160.13, scalingFactorY*scalingFactorX*716.79)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*204.47, scalingFactorY*scalingFactorX*746.12) controlPoint1: CGPointMake(scalingFactorX*194.88, scalingFactorY*scalingFactorX*734.98) controlPoint2: CGPointMake(scalingFactorX*200.98, scalingFactorY*scalingFactorX*740.38)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*241.07, scalingFactorY*scalingFactorX*750.03) controlPoint1: CGPointMake(scalingFactorX*216.1, scalingFactorY*scalingFactorX*740.92) controlPoint2: CGPointMake(scalingFactorX*231.15, scalingFactorY*scalingFactorX*742.23)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*241.07, scalingFactorY*scalingFactorX*783.97) controlPoint1: CGPointMake(scalingFactorX*252.98, scalingFactorY*scalingFactorX*759.4) controlPoint2: CGPointMake(scalingFactorX*252.98, scalingFactorY*scalingFactorX*774.6)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*197.93, scalingFactorY*scalingFactorX*783.97) controlPoint1: CGPointMake(scalingFactorX*229.16, scalingFactorY*scalingFactorX*793.34) controlPoint2: CGPointMake(scalingFactorX*209.84, scalingFactorY*scalingFactorX*793.34)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*194.31, scalingFactorY*scalingFactorX*780.54) controlPoint1: CGPointMake(scalingFactorX*196.57, scalingFactorY*scalingFactorX*782.9) controlPoint2: CGPointMake(scalingFactorX*195.36, scalingFactorY*scalingFactorX*781.75)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*186.18, scalingFactorY*scalingFactorX*785.58) controlPoint1: CGPointMake(scalingFactorX*191.92, scalingFactorY*scalingFactorX*782.3) controlPoint2: CGPointMake(scalingFactorX*189.21, scalingFactorY*scalingFactorX*783.99)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*80.82, scalingFactorY*scalingFactorX*785.58) controlPoint1: CGPointMake(scalingFactorX*157.09, scalingFactorY*scalingFactorX*800.81) controlPoint2: CGPointMake(scalingFactorX*109.91, scalingFactorY*scalingFactorX*800.81)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*70.97, scalingFactorY*scalingFactorX*779.22) controlPoint1: CGPointMake(scalingFactorX*77.05, scalingFactorY*scalingFactorX*783.6) controlPoint2: CGPointMake(scalingFactorX*73.77, scalingFactorY*scalingFactorX*781.47)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*11.35, scalingFactorY*scalingFactorX*772.84) controlPoint1: CGPointMake(scalingFactorX*52.17, scalingFactorY*scalingFactorX*788.66) controlPoint2: CGPointMake(scalingFactorX*27.52, scalingFactorY*scalingFactorX*786.54)];
	[leftCloudsPath addCurveToPoint: CGPointMake(-scalingFactorX*2.66, scalingFactorY*scalingFactorX*738.64) controlPoint1: CGPointMake(scalingFactorX*0.32, scalingFactorY*scalingFactorX*763.5) controlPoint2: CGPointMake(-scalingFactorX*4.35, scalingFactorY*scalingFactorX*750.81)];
	[leftCloudsPath addCurveToPoint: CGPointMake(-scalingFactorX*9.48, scalingFactorY*scalingFactorX*733.33) controlPoint1: CGPointMake(-scalingFactorX*5.1, scalingFactorY*scalingFactorX*737.22) controlPoint2: CGPointMake(-scalingFactorX*7.4, scalingFactorY*scalingFactorX*735.45)];
	[leftCloudsPath addCurveToPoint: CGPointMake(-scalingFactorX*15.16, scalingFactorY*scalingFactorX*694.41) controlPoint1: CGPointMake(-scalingFactorX*19.86, scalingFactorY*scalingFactorX*722.8) controlPoint2: CGPointMake(-scalingFactorX*21.75, scalingFactorY*scalingFactorX*706.9)];
	[leftCloudsPath addCurveToPoint: CGPointMake(-scalingFactorX*22.95, scalingFactorY*scalingFactorX*688.95) controlPoint1: CGPointMake(-scalingFactorX*17.97, scalingFactorY*scalingFactorX*693.1) controlPoint2: CGPointMake(-scalingFactorX*20.62, scalingFactorY*scalingFactorX*691.27)];
	[leftCloudsPath addCurveToPoint: CGPointMake(-scalingFactorX*22.95, scalingFactorY*scalingFactorX*650.05) controlPoint1: CGPointMake(-scalingFactorX*33.68, scalingFactorY*scalingFactorX*678.21) controlPoint2: CGPointMake(-scalingFactorX*33.68, scalingFactorY*scalingFactorX*660.79)];
	[leftCloudsPath addCurveToPoint: CGPointMake(scalingFactorX*15.95, scalingFactorY*scalingFactorX*650.05) controlPoint1: CGPointMake(-scalingFactorX*12.21, scalingFactorY*scalingFactorX*639.32) controlPoint2: CGPointMake(scalingFactorX*5.21, scalingFactorY*scalingFactorX*639.32)];
	[leftCloudsPath closePath];
	[rgb255 setFill];
	[leftCloudsPath fill];
	
	// Left Clouds 2 Drawing
	UIBezierPath* leftClouds2Path = [UIBezierPath bezierPath];
	[leftClouds2Path moveToPoint: CGPointMake(scalingFactorX*6.95, scalingFactorY*scalingFactorX*655.05)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*13.56, scalingFactorY*scalingFactorX*683.3) controlPoint1: CGPointMake(scalingFactorX*14.59, scalingFactorY*scalingFactorX*662.7) controlPoint2: CGPointMake(scalingFactorX*16.79, scalingFactorY*scalingFactorX*673.71)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*27.48, scalingFactorY*scalingFactorX*691.67) controlPoint1: CGPointMake(scalingFactorX*18.65, scalingFactorY*scalingFactorX*684.8) controlPoint2: CGPointMake(scalingFactorX*23.46, scalingFactorY*scalingFactorX*687.59)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*36.04, scalingFactorY*scalingFactorX*707.01) controlPoint1: CGPointMake(scalingFactorX*31.81, scalingFactorY*scalingFactorX*696.06) controlPoint2: CGPointMake(scalingFactorX*34.66, scalingFactorY*scalingFactorX*701.39)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*71.65, scalingFactorY*scalingFactorX*719.16) controlPoint1: CGPointMake(scalingFactorX*48.9, scalingFactorY*scalingFactorX*706.8) controlPoint2: CGPointMake(scalingFactorX*61.84, scalingFactorY*scalingFactorX*710.84)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*81.52, scalingFactorY*scalingFactorX*731.14) controlPoint1: CGPointMake(scalingFactorX*75.87, scalingFactorY*scalingFactorX*722.73) controlPoint2: CGPointMake(scalingFactorX*79.16, scalingFactorY*scalingFactorX*726.8)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*177.18, scalingFactorY*scalingFactorX*735.42) controlPoint1: CGPointMake(scalingFactorX*110.6, scalingFactorY*scalingFactorX*720.36) controlPoint2: CGPointMake(scalingFactorX*151.13, scalingFactorY*scalingFactorX*721.79)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*195.47, scalingFactorY*scalingFactorX*751.12) controlPoint1: CGPointMake(scalingFactorX*185.88, scalingFactorY*scalingFactorX*739.98) controlPoint2: CGPointMake(scalingFactorX*191.98, scalingFactorY*scalingFactorX*745.38)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*232.07, scalingFactorY*scalingFactorX*755.03) controlPoint1: CGPointMake(scalingFactorX*207.1, scalingFactorY*scalingFactorX*745.92) controlPoint2: CGPointMake(scalingFactorX*222.15, scalingFactorY*scalingFactorX*747.23)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*232.07, scalingFactorY*scalingFactorX*788.97) controlPoint1: CGPointMake(scalingFactorX*243.98, scalingFactorY*scalingFactorX*764.4) controlPoint2: CGPointMake(scalingFactorX*243.98, scalingFactorY*scalingFactorX*779.6)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*188.93, scalingFactorY*scalingFactorX*788.97) controlPoint1: CGPointMake(scalingFactorX*220.16, scalingFactorY*scalingFactorX*798.34) controlPoint2: CGPointMake(scalingFactorX*200.84, scalingFactorY*scalingFactorX*798.34)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*185.31, scalingFactorY*scalingFactorX*785.54) controlPoint1: CGPointMake(scalingFactorX*187.57, scalingFactorY*scalingFactorX*787.9) controlPoint2: CGPointMake(scalingFactorX*186.36, scalingFactorY*scalingFactorX*786.75)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*177.18, scalingFactorY*scalingFactorX*790.58) controlPoint1: CGPointMake(scalingFactorX*182.92, scalingFactorY*scalingFactorX*787.3) controlPoint2: CGPointMake(scalingFactorX*180.21, scalingFactorY*scalingFactorX*788.99)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*71.82, scalingFactorY*scalingFactorX*790.58) controlPoint1: CGPointMake(scalingFactorX*148.09, scalingFactorY*scalingFactorX*805.81) controlPoint2: CGPointMake(scalingFactorX*100.91, scalingFactorY*scalingFactorX*805.81)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*61.97, scalingFactorY*scalingFactorX*784.22) controlPoint1: CGPointMake(scalingFactorX*68.05, scalingFactorY*scalingFactorX*788.6) controlPoint2: CGPointMake(scalingFactorX*64.77, scalingFactorY*scalingFactorX*786.47)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*2.35, scalingFactorY*scalingFactorX*777.84) controlPoint1: CGPointMake(scalingFactorX*43.17, scalingFactorY*scalingFactorX*793.66) controlPoint2: CGPointMake(scalingFactorX*18.52, scalingFactorY*scalingFactorX*791.54)];
	[leftClouds2Path addCurveToPoint: CGPointMake(-scalingFactorX*11.66, scalingFactorY*scalingFactorX*743.64) controlPoint1: CGPointMake(-scalingFactorX*8.68, scalingFactorY*scalingFactorX*768.5) controlPoint2: CGPointMake(-scalingFactorX*13.35, scalingFactorY*scalingFactorX*755.81)];
	[leftClouds2Path addCurveToPoint: CGPointMake(-scalingFactorX*18.48, scalingFactorY*scalingFactorX*738.33) controlPoint1: CGPointMake(-scalingFactorX*14.1, scalingFactorY*scalingFactorX*742.22) controlPoint2: CGPointMake(-scalingFactorX*16.4, scalingFactorY*scalingFactorX*740.45)];
	[leftClouds2Path addCurveToPoint: CGPointMake(-scalingFactorX*24.16, scalingFactorY*scalingFactorX*699.41) controlPoint1: CGPointMake(-scalingFactorX*28.86, scalingFactorY*scalingFactorX*727.8) controlPoint2: CGPointMake(-scalingFactorX*30.75, scalingFactorY*scalingFactorX*711.9)];
	[leftClouds2Path addCurveToPoint: CGPointMake(-scalingFactorX*31.95, scalingFactorY*scalingFactorX*693.95) controlPoint1: CGPointMake(-scalingFactorX*26.97, scalingFactorY*scalingFactorX*698.1) controlPoint2: CGPointMake(-scalingFactorX*29.62, scalingFactorY*scalingFactorX*696.27)];
	[leftClouds2Path addCurveToPoint: CGPointMake(-scalingFactorX*31.95, scalingFactorY*scalingFactorX*655.05) controlPoint1: CGPointMake(-scalingFactorX*42.68, scalingFactorY*scalingFactorX*683.21) controlPoint2: CGPointMake(-scalingFactorX*42.68, scalingFactorY*scalingFactorX*665.79)];
	[leftClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*6.95, scalingFactorY*scalingFactorX*655.05) controlPoint1: CGPointMake(-scalingFactorX*21.21, scalingFactorY*scalingFactorX*644.32) controlPoint2: CGPointMake(-scalingFactorX*3.79, scalingFactorY*scalingFactorX*644.32)];
	[leftClouds2Path closePath];
	[rgb240 setFill];
	[leftClouds2Path fill];
	
	// Right Clouds 2 Drawing
	UIBezierPath* rightClouds2Path = [UIBezierPath bezierPath];
	[rightClouds2Path moveToPoint: CGPointMake(scalingFactorX*1070.7, scalingFactorY*scalingFactorX*659.58)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*1070.7, scalingFactorY*scalingFactorX*703.42) controlPoint1: CGPointMake(scalingFactorX*1087.1, scalingFactorY*scalingFactorX*671.69) controlPoint2: CGPointMake(scalingFactorX*1087.1, scalingFactorY*scalingFactorX*691.31)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*1031, scalingFactorY*scalingFactorX*711.61) controlPoint1: CGPointMake(scalingFactorX*1059.93, scalingFactorY*scalingFactorX*711.37) controlPoint2: CGPointMake(scalingFactorX*1044.78, scalingFactorY*scalingFactorX*714.1)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*1029.07, scalingFactorY*scalingFactorX*721.02) controlPoint1: CGPointMake(scalingFactorX*1030.98, scalingFactorY*scalingFactorX*714.8) controlPoint2: CGPointMake(scalingFactorX*1030.34, scalingFactorY*scalingFactorX*717.98)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*1048.5, scalingFactorY*scalingFactorX*732.19) controlPoint1: CGPointMake(scalingFactorX*1036.1, scalingFactorY*scalingFactorX*723.73) controlPoint2: CGPointMake(scalingFactorX*1042.68, scalingFactorY*scalingFactorX*727.46)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*1048.5, scalingFactorY*scalingFactorX*812.81) controlPoint1: CGPointMake(scalingFactorX*1075.83, scalingFactorY*scalingFactorX*754.45) controlPoint2: CGPointMake(scalingFactorX*1075.83, scalingFactorY*scalingFactorX*790.55)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*949.5, scalingFactorY*scalingFactorX*812.81) controlPoint1: CGPointMake(scalingFactorX*1021.16, scalingFactorY*scalingFactorX*835.06) controlPoint2: CGPointMake(scalingFactorX*976.84, scalingFactorY*scalingFactorX*835.06)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*934.19, scalingFactorY*scalingFactorX*794.08) controlPoint1: CGPointMake(scalingFactorX*942.71, scalingFactorY*scalingFactorX*807.28) controlPoint2: CGPointMake(scalingFactorX*937.61, scalingFactorY*scalingFactorX*800.89)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*908.2, scalingFactorY*scalingFactorX*790.8) controlPoint1: CGPointMake(scalingFactorX*925.39, scalingFactorY*scalingFactorX*795.19) controlPoint2: CGPointMake(scalingFactorX*916.14, scalingFactorY*scalingFactorX*794.09)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*902.63, scalingFactorY*scalingFactorX*796.88) controlPoint1: CGPointMake(scalingFactorX*906.76, scalingFactorY*scalingFactorX*792.99) controlPoint2: CGPointMake(scalingFactorX*904.9, scalingFactorY*scalingFactorX*795.04)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*857.37, scalingFactorY*scalingFactorX*796.88) controlPoint1: CGPointMake(scalingFactorX*890.13, scalingFactorY*scalingFactorX*807.04) controlPoint2: CGPointMake(scalingFactorX*869.87, scalingFactorY*scalingFactorX*807.04)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*857.37, scalingFactorY*scalingFactorX*760.12) controlPoint1: CGPointMake(scalingFactorX*844.88, scalingFactorY*scalingFactorX*786.73) controlPoint2: CGPointMake(scalingFactorX*844.88, scalingFactorY*scalingFactorX*770.27)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*893.02, scalingFactorY*scalingFactorX*754.74) controlPoint1: CGPointMake(scalingFactorX*867.01, scalingFactorY*scalingFactorX*752.28) controlPoint2: CGPointMake(scalingFactorX*881.27, scalingFactorY*scalingFactorX*750.49)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*900.28, scalingFactorY*scalingFactorX*747.55) controlPoint1: CGPointMake(scalingFactorX*894.83, scalingFactorY*scalingFactorX*752.15) controlPoint2: CGPointMake(scalingFactorX*897.25, scalingFactorY*scalingFactorX*749.72)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*940.55, scalingFactorY*scalingFactorX*741.12) controlPoint1: CGPointMake(scalingFactorX*911.17, scalingFactorY*scalingFactorX*739.78) controlPoint2: CGPointMake(scalingFactorX*926.95, scalingFactorY*scalingFactorX*737.63)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*949.5, scalingFactorY*scalingFactorX*732.19) controlPoint1: CGPointMake(scalingFactorX*943.1, scalingFactorY*scalingFactorX*737.97) controlPoint2: CGPointMake(scalingFactorX*946.09, scalingFactorY*scalingFactorX*734.97)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*968.07, scalingFactorY*scalingFactorX*721.35) controlPoint1: CGPointMake(scalingFactorX*955.08, scalingFactorY*scalingFactorX*727.65) controlPoint2: CGPointMake(scalingFactorX*961.37, scalingFactorY*scalingFactorX*724.04)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*975.52, scalingFactorY*scalingFactorX*691.7) controlPoint1: CGPointMake(scalingFactorX*963.73, scalingFactorY*scalingFactorX*711.38) controlPoint2: CGPointMake(scalingFactorX*966.21, scalingFactorY*scalingFactorX*699.72)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*999.09, scalingFactorY*scalingFactorX*683.5) controlPoint1: CGPointMake(scalingFactorX*982.02, scalingFactorY*scalingFactorX*686.1) controlPoint2: CGPointMake(scalingFactorX*990.58, scalingFactorY*scalingFactorX*683.37)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*1011.3, scalingFactorY*scalingFactorX*659.58) controlPoint1: CGPointMake(scalingFactorX*998.34, scalingFactorY*scalingFactorX*674.92) controlPoint2: CGPointMake(scalingFactorX*1002.41, scalingFactorY*scalingFactorX*666.14)];
	[rightClouds2Path addCurveToPoint: CGPointMake(scalingFactorX*1070.7, scalingFactorY*scalingFactorX*659.58) controlPoint1: CGPointMake(scalingFactorX*1027.7, scalingFactorY*scalingFactorX*647.47) controlPoint2: CGPointMake(scalingFactorX*1054.3, scalingFactorY*scalingFactorX*647.47)];
	[rightClouds2Path closePath];
	[rgb240 setFill];
	[rightClouds2Path fill];

	// Memory
	CGGradientRelease(skyBackground);
	CGColorSpaceRelease(colorSpace);
}

@end