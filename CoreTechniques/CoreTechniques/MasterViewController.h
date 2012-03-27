/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

#pragma mark - Public Properties
@property (strong, nonatomic) DetailViewController *detailViewController;

#pragma mark - Public Methods

@end
