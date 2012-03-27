/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 20.03.2012
 */

#import <UIKit/UIKit.h>

@class AngryBirdView;

@interface ViewController : UIViewController <UIScrollViewDelegate>

#pragma mark - Public Properties
@property (nonatomic, strong) IBOutlet UIScrollView *iPhoneScrollView;
@property (nonatomic, strong) IBOutlet AngryBirdView *angryBird;

#pragma mark - Public Methods

@end