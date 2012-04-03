/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 27.03.2012
 */

#import <UIKit/UIKit.h>
#import "CoverFlowView.h"

@interface CoverFlowViewController : UIViewController <UIScrollViewDelegate>

#pragma mark - Public Properties
@property (nonatomic, strong, readwrite) IBOutlet CoverFlowView *view;

@property (nonatomic, assign, readwrite) CGFloat coverSpacing;
@property (nonatomic, assign, readwrite) CGFloat coverWidth;
@property (nonatomic, assign, readwrite) CGFloat coverHeight;

#pragma mark - Public Methods

@end