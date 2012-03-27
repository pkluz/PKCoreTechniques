/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

#pragma mark - Private Properties
@property (nonatomic, strong) NSMutableArray *objects;

#pragma mark - Private Methods

@end

@implementation MasterViewController

@synthesize detailViewController = _detailViewController;
@synthesize objects = _objects;
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.title = NSLocalizedString(@"Techniques", @"Techniques");
	self.clearsSelectionOnViewWillAppear = NO;
	self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
	
	self.objects = [[NSMutableArray alloc] initWithCapacity:8];
	
	[self.objects addObject:@"Color Fill"];
	[self.objects addObject:@"Gradient Fill (Linear)"];
	[self.objects addObject:@"Gradient Fill (Radial)"];
	[self.objects addObject:@"Images"];
	[self.objects addObject:@"Paths"];
	[self.objects addObject:@"Bezier Curves"];
	[self.objects addObject:@"Clipping"];
	[self.objects addObject:@"Clipping (Even-Odd)"];
}

- (void)viewDidUnload
{
	self.objects = nil;
	self.detailViewController = nil;
	
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.objects count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
    if (cell == nil)
	{
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
	
	cell.textLabel.text = [self.objects objectAtIndex:indexPath.row];
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *topic = [self.objects objectAtIndex:indexPath.row];
    self.detailViewController.topic = topic;
}

@end