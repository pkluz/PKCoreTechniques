/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 01.04.2012
 */

#import "ViewController.h"

@implementation ViewController

@synthesize redBox;

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (IBAction)toggleBoxVisibility:(id)sender
{
	// TODO: Implement the fade animation.
	#warning Implement the fade animation.
}

- (void)viewDidUnload
{
	[self setRedBox:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end