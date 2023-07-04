//
//  PauseState.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#import "PauseState.h"

@implementation PauseState

- (void)play {
    NSLog(@"继续播放音乐");
}

- (void)pause {
    NSLog(@"音乐已经暂停");
}

- (void)stop {
    NSLog(@"停止播放音乐");
}


@end
