//
//  AsyncTaskCommand.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "AsyncTaskCommand.h"

@implementation AsyncTaskCommand

- (instancetype)initWithTaskName:(NSString *)taskName priority:(NSInteger)priority {
    self = [super init];
    if (self) {
        _taskName = taskName;
        _priority = priority;
        _paused = NO;
    }
    return self;
}

- (void)execute {
    if (self.paused) {
        NSLog(@"任务已暂停：%@", self.taskName);
        return;
    }
    // 执行具体的异步任务，例如发送网络请求、读取文件等
    NSLog(@"执行异步任务：%@", self.taskName);
}


- (void)pause {
    self.paused = YES;
}

- (void)resume {
    self.paused = NO;
}

- (NSInteger)priority {
    return _priority;
}

@end
