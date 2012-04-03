/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 27.03.2012
 */

#import <UIKit/UIKit.h>

enum CoverViewPresentationState {
	CoverViewNormal = 0,
	CoverViewIsPresented = 1
};

@interface CoverView : UIView
{
	enum CoverViewPresentationState _currentPresentationState;
}

#pragma mark - Public Properties

#pragma mark - Public Methods
- (void)presentCoverView;
- (void)dismissCoverView;

@end