//
//  ViewController.m
//  DocPickerTest
//  
//  Created by KIRA Ryouta on 2025/11/09.
//

#import "AudioUnitViewController.h"
#import "MyAudioUnit.h"

@interface AudioUnitViewController ()

@end

@implementation AudioUnitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor darkGrayColor];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1. * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIDocumentPickerViewController* picker = [[UIDocumentPickerViewController alloc] initForOpeningContentTypes:@[UTTypeFolder]];
        [self presentViewController:picker animated:YES completion:nil];
    });
}

- (AUAudioUnit *)createAudioUnitWithComponentDescription:(AudioComponentDescription)desc error:(NSError **)error {
    self.audioUnit = [[MyAudioUnit alloc] initWithComponentDescription:desc error:error];
    return self.audioUnit;
}

@end
