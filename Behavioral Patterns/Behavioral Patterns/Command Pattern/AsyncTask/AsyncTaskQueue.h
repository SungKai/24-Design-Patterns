//
//  AsyncTaskQueue.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import <Foundation/Foundation.h>
#import "Command.h"

// 异步任务队列类

NS_ASSUME_NONNULL_BEGIN

@interface AsyncTaskQueue : NSObject

@property (nonatomic, strong) NSMutableArray<id <Command>> *taskQueue;

- (void)addTask:(id<Command>)task;
- (void)removeTask:(id<Command>)task;
- (void)executeTasks;
- (void)pauseTasks;
- (void)resumeTasks;

@end

NS_ASSUME_NONNULL_END
