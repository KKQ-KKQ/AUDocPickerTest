//
//  AudioUnit.m
//  DocPickerTest
//  
//  Created by KIRA Ryouta on 2025/11/09.
//

#import "MyAudioUnit.h"
#import <CoreAudioKit/CoreAudioKit.h>

@implementation MyAudioUnit
{
    AUAudioUnitBusArray* outBusses;
}

- (id)initWithComponentDescription:(AudioComponentDescription)componentDescription options:(AudioComponentInstantiationOptions)options error:(NSError *__autoreleasing  _Nullable *)outError
{
    if (self = [super initWithComponentDescription:componentDescription options:options error:outError]) {
        AUAudioUnitBus* outBus = [[AUAudioUnitBus alloc] initWithFormat:[[AVAudioFormat alloc] initStandardFormatWithSampleRate:48000. channels:2] error:nil];
        outBusses = [[AUAudioUnitBusArray alloc] initWithAudioUnit:self busType:AUAudioUnitBusTypeOutput busses:@[outBus]];
    }
    return self;
}

- (AUAudioUnitBusArray*)outputBusses
{
    return outBusses;
}

- (AUInternalRenderBlock)internalRenderBlock
{
    return ^(AudioUnitRenderActionFlags * _Nonnull ioFlags, const AudioTimeStamp * _Nonnull timeStamp, AUAudioFrameCount frameCount, NSInteger busNumber, AudioBufferList * _Nonnull ioData, const AURenderEvent * _Nullable events, AURenderPullInputBlock  _Nullable __unsafe_unretained pullInputBlock){
        return noErr;
    };
}

@end
