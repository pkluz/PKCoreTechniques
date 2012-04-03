/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 01.04.2012
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *redBox;

- (IBAction)toggleBoxVisibility:(id)sender;

@end
