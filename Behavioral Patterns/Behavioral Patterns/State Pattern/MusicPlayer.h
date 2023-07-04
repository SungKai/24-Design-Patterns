//
//  MusicPlayer.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

// 上下文类

#import <Foundation/Foundation.h>
#import "State.h"
#import "PlayState.h"
#import "PauseState.h"
#import "StopState.h"

NS_ASSUME_NONNULL_BEGIN

@interface MusicPlayer : NSObject

@property (nonatomic, strong) id<State> currentState;

- (void)playMusic;
- (void)pauseMusic;
- (void)stopMusic;

@end

NS_ASSUME_NONNULL_END
