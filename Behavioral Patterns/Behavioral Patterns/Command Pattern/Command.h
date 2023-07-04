//
//  Command.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#ifndef Command_h
#define Command_h

@protocol Command <NSObject>

- (void)execute;

/// 用于异步任务队列
- (void)pause;
- (void)resume;
- (NSInteger)priority;

@end

#endif /* Command_h */
