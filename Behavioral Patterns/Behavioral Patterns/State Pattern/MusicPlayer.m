//
//  MusicPlayer.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#import "MusicPlayer.h"

@implementation MusicPlayer

- (instancetype)init {
    self = [super init];
    if (self) {
        // 初始状态为停止状态
        _currentState = [[StopState alloc] init];
    }
    return self;
}

- (void)playMusic {
    [self.currentState play];
    self.currentState = [[PlayState alloc] init];
}

- (void)pauseMusic {
    [self.currentState pause];
    self.currentState = [[PauseState alloc] init];
}

- (void)stopMusic {
    [self.currentState stop];
    self.currentState = [[StopState alloc] init];
}

@end
