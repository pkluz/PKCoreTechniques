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
@property (nonatomic, strong, readwrite) NSMutableDictionary *dataSource;

#pragma mark - Private Methods

@end

@implementation MasterViewController

@synthesize detailViewController = _detailViewController;
@synthesize dataSource = _dataSource;
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.title = NSLocalizedString(@"Techniques", @"Techniques");
	self.clearsSelectionOnViewWillAppear = NO;
	self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
	
	NSString *dataSourceFilePath = [[NSBundle mainBundle] pathForResource:@"TopicsDataSource" ofType:@"plist"];
	self.dataSource = [[NSMutableDictionary alloc] initWithContentsOfFile:dataSourceFilePath];
}

- (void)viewDidUnload
{
	self.dataSource = nil;
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
	return [[self.dataSource objectForKey:@"DataSource"] count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
	return 22.0f;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	return [[[self.dataSource objectForKey:@"DataSource"] objectAtIndex:section] objectForKey:@"Title"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [[[[self.dataSource objectForKey:@"DataSource"] objectAtIndex:section] objectForKey:@"Topics"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
    if (cell == nil)
	{
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
	
	cell.textLabel.text = [[[[self.dataSource objectForKey:@"DataSource"] objectAtIndex:indexPath.section] objectForKey:@"Topics"] objectAtIndex:indexPath.row];
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *topic = [[[[self.dataSource objectForKey:@"DataSource"] objectAtIndex:indexPath.section] objectForKey:@"Topics"] objectAtIndex:indexPath.row];
    self.detailViewController.topic = topic;
}

@end