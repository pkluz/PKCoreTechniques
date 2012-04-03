/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import <UIKit/UIKit.h>

@interface TapAndMoveView : UIView

#pragma mark - Public Properties
@property (nonatomic, strong, readonly) UIView *redBox;

#pragma mark - Public Methods
// Note: Tap recognition is implemented in the associated ViewController! In our case: The DetailViewController.
- (void)didTapView;

@end