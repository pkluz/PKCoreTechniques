/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "DetailViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize splitViewController = _splitViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

	MasterViewController *masterViewController = [[MasterViewController alloc] init];
	UINavigationController *masterNavigationController = [[UINavigationController alloc] initWithRootViewController:masterViewController];

	DetailViewController *detailViewController = [[DetailViewController alloc] init];
	UINavigationController *detailNavigationController = [[UINavigationController alloc] initWithRootViewController:detailViewController];

	masterViewController.detailViewController = detailViewController;

	self.splitViewController = [[UISplitViewController alloc] init];
	self.splitViewController.delegate = detailViewController;
	self.splitViewController.viewControllers = [NSArray arrayWithObjects:masterNavigationController, detailNavigationController, nil];
	
	self.window.rootViewController = self.splitViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end