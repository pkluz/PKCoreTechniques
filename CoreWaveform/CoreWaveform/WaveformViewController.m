/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import "WaveformViewController.h"
#import "WaveformView.h"

@interface WaveformViewController ()

#pragma mark - Private Properties
@property (nonatomic, strong, readwrite) IBOutlet WaveformView *waveformView;

#pragma mark - Private Methods

@end

@implementation WaveformViewController

@synthesize waveformView = _waveformView;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
	self.waveformView = nil;
    [super viewDidUnload];
}

- (IBAction)playToggle:(id)sender
{
	NSLog(@"Play/Pause");
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}

#pragma mark - AVAudioPlayerDelegate

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
	NSLog(@"Finished playing.");
}

/* if an error occurs while decoding it will be reported to the delegate. */
- (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error
{
	NSLog(@"Decoding error.");
}

@end