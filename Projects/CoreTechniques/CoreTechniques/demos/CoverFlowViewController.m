/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 27.03.2012
 */

#import "CoverFlowViewController.h"
#import "CoverFlowView.h"
#import "CoverView.h"

@interface CoverFlowViewController ()

#pragma mark - Private Properties
@property (nonatomic, strong, readwrite) NSMutableArray *covers;
@property (nonatomic, assign, readwrite) NSUInteger currentCoverIndex;

#pragma mark - Private Methods
// Debug:
- (void)debug_setupCovers;
- (void)debug_distributeCovers;

@end

@implementation CoverFlowViewController

@synthesize currentCoverIndex = _currentCoverIndex;
@synthesize covers = _covers;
@synthesize coverSpacing = _coverSpacing;
@synthesize coverWidth = _coverWidth;
@synthesize coverHeight = _coverHeight;
@dynamic view;

#pragma mark - Initialization

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	
    if (nil != self)
	{
		self.title = @"Coverflow";
		self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss" style:UIBarButtonItemStylePlain target:self action:@selector(dismissModalViewControllerAnimated:)];
		
		self.currentCoverIndex = 0;
		self.coverSpacing = 115.0f;
		self.coverWidth = 150.0f;
		self.coverHeight = 150.0f;
    }
	
    return self;
}

#pragma mark - CoverFlow Logic

- (void)animateToIndex:(NSUInteger)index
{
	
}

- (void)snapToClosestIndex
{
	
}

- (void)translateCoverFlow:(CGFloat)value
{
	
}

- (CGFloat)scalingFactorForOrigin:(CGPoint)origin
{
	return 0.0f;
}

- (NSUInteger)coverCount
{
	return [self.covers count];
}

- (CoverView *)currentCover
{
	return [self.covers objectAtIndex:self.currentCoverIndex];
}

#pragma mark - CoverFlow Setup

- (void)debug_setupCovers
{
	self.covers = [[NSMutableArray alloc] init];
	
	CGFloat verticalCenter = (self.view.frame.size.height-self.coverHeight)/2.0f;
	
	[self.covers addObject:[[CoverView alloc] initWithFrame:CGRectMake(0.0f, verticalCenter, self.coverWidth, self.coverHeight)]];
	[self.covers addObject:[[CoverView alloc] initWithFrame:CGRectMake(0.0f, verticalCenter, self.coverWidth, self.coverHeight)]];
	[self.covers addObject:[[CoverView alloc] initWithFrame:CGRectMake(0.0f, verticalCenter, self.coverWidth, self.coverHeight)]];
	[self.covers addObject:[[CoverView alloc] initWithFrame:CGRectMake(0.0f, verticalCenter, self.coverWidth, self.coverHeight)]];
	[self.covers addObject:[[CoverView alloc] initWithFrame:CGRectMake(0.0f, verticalCenter, self.coverWidth, self.coverHeight)]];
	
	self.view.contentSize = CGSizeMake([self coverCount]*(self.coverWidth+self.coverSpacing), self.coverHeight);
	
	[self debug_distributeCovers];
}

- (void)debug_distributeCovers
{
	NSUInteger coverCount = [self coverCount];
	
	for (NSUInteger i = 0; i < coverCount; i++)
	{
		CoverView *cover = [self.covers objectAtIndex:i];
		
		if (i == 0)
		{
			cover.frame = CGRectOffset(cover.frame, self.coverSpacing, 0.0f);
		}
		else
		{
			CoverView *previousCover = [self.covers objectAtIndex:i-1];
			
			CGFloat horizontalOffsetInRelationToPrevious = previousCover.frame.origin.x + self.coverWidth + self.coverSpacing;
			cover.frame = CGRectOffset(cover.frame, horizontalOffsetInRelationToPrevious, 0.0f);
		}
		
		[self.view addSubview:cover];
	}
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.view.decelerationRate = UIScrollViewDecelerationRateNormal/2.0f;
	
	[self debug_setupCovers];
}

- (void)viewDidUnload
{	
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

@end