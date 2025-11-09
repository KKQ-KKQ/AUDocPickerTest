//
//  ViewController.h
//  DocPickerTest
//  
//  Created by KIRA Ryouta on 2025/11/09.
//

#import <UIKit/UIKit.h>
#import <CoreAudioKit/CoreAudioKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AudioUnitViewController : AUViewController<AUAudioUnitFactory>

@property (nonatomic) AUAudioUnit* audioUnit;

@end

NS_ASSUME_NONNULL_END
