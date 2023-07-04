//
//  State.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#ifndef State_h
#define State_h

// 状态接口
@protocol State <NSObject>

- (void)play;
- (void)pause;
- (void)stop;

@end

#endif /* State_h */
