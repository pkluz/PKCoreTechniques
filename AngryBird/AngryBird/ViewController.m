//
//  ViewController.m
//  AngryBird
//
//  Created by Philip Kluz on 3/20/12.
//  Copyright (c) 2012 nehira.com. All rights reserved.
//

#import "ViewController.h"
#import "AngryBirdView.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize iPhoneScrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
	{
		self.iPhoneScrollView.contentSize = CGSizeMake(512.0f, 512.0f);
		AngryBirdView *angryBird = [[AngryBirdView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 512.0f, 512.0f)];
		[self.iPhoneScrollView addSubview:angryBird];
	}
}

- (void)viewDidUnload
{
	self.iPhoneScrollView = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end