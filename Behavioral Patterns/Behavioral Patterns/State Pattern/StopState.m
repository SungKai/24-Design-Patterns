//
//  StopState.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#import "StopState.h"

@implementation StopState

- (void)play {
    NSLog(@"开始播放音乐");
}

- (void)pause {
    NSLog(@"音乐已经停止");
}

- (void)stop {
    NSLog(@"音乐已经停止");
}

@end
