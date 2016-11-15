//
//  TTSExample.m
//  voicedemo
//
//  Created by 陈波涛 on 16/5/6.
//  Copyright © 2016年 weixun. All rights reserved.
//

#import "TTSExample.h"
#import <AVFoundation/AVFoundation.h>


@interface TTSExample ()<AVSpeechSynthesizerDelegate>


@property (nonatomic, strong)AVSpeechSynthesizer *Vediospeecher;

@end


@implementation TTSExample

- (instancetype)init{
    
    if (self = [super init]) {
        
        _Vediospeecher.delegate = self;
        
    }
    
    return self;
}


- (void)read:(NSString *)str{
    
//    NSString * str = @"你早晚会是一个大牛";
    
    AVSpeechUtterance * VideoSpeechUtterance = [[AVSpeechUtterance alloc] initWithString:str];
    
    VideoSpeechUtterance.rate = AVSpeechUtteranceDefaultSpeechRate;
    
    VideoSpeechUtterance.voice =[AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"];
    
    [self.Vediospeecher speakUtterance:VideoSpeechUtterance];
    
}

- (void)stopRead{

    [self.Vediospeecher stopSpeakingAtBoundary:AVSpeechBoundaryImmediate];
    
}


- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer didFinishSpeechUtterance:(AVSpeechUtterance *)utterance;{

    NSLog(@"read over");

}

- (AVSpeechSynthesizer *)Vediospeecher{
    
    if (!_Vediospeecher) {
        
        
        _Vediospeecher = [[AVSpeechSynthesizer alloc] init];
        
    }
    
    return _Vediospeecher;
    
}


@end
