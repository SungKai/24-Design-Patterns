//
//  PlayState.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#import "PlayState.h"

@implementation PlayState

- (void)play {
    NSLog(@"当前已经在播放音乐");
}

- (void)pause {
    NSLog(@"暂停音乐");
}

- (void)stop {
    NSLog(@"停止播放音乐");
}

@end
