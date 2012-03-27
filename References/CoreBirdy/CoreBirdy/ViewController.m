/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 20.03.2012
 */

#import "ViewController.h"
#import "AngryBirdView.h"

@implementation ViewController

@synthesize iPhoneScrollView;
@synthesize angryBird;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
	{
		self.iPhoneScrollView.contentSize = CGSizeMake(512.0f, 512.0f);
		AngryBirdView *anAngryBird = [[AngryBirdView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 512.0f, 512.0f)];
		[self.iPhoneScrollView addSubview:anAngryBird];
	}
}

- (void)viewDidUnload
{
	self.iPhoneScrollView = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

@end