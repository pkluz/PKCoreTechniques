/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 01.04.2012
 */

#import <UIKit/UIKit.h>

@interface TapAndMoveViewWithHitTest : UIView

#pragma mark - Public Properties
@property (nonatomic, strong, readonly) UIView *redBox;

#pragma mark - Public Methods
// Note: Hit testing is implemented in the associated ViewController! In our case: The DetailViewController.
- (void)didTapRedBox;

@end