/* 
 * Copyright (c) 2011, Nehira.com
 * All rights reserved.
 * 
 * @author Philip Kluz
 * @date 26.03.2012
 */

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@class WaveformView;

@interface WaveformViewController : UIViewController <AVAudioPlayerDelegate>

#pragma mark - Public Properties
@property (nonatomic, strong, readonly) IBOutlet WaveformView *waveformView;

#pragma mark - Public Methods
- (IBAction)playToggle:(id)sender;

@end