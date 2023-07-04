//
//  AsyncTaskQueue.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "AsyncTaskQueue.h"

@implementation AsyncTaskQueue

- (instancetype)init {
    self = [super init];
    if (self) {
        _taskQueue = [NSMutableArray array];
    }
    return self;
}

- (void)addTask:(id<Command>)task {
    [self.taskQueue addObject:task];
}

- (void)removeTask:(id<Command>)task {
    [self.taskQueue removeObject:task];
}

- (void)executeTasks {
    NSLog(@"executeTasks");
    NSArray<id<Command>> *sortedTasks = [self.taskQueue sortedArrayUsingComparator:^NSComparisonResult(id<Command> task1, id<Command> task2) {
        
        NSInteger priority1 = [task1 priority];
        NSInteger priority2 = [task2 priority];
        if (priority1 < priority2) {
            return NSOrderedAscending;  // 排在前面
        } else if (priority1 > priority2) {
            return NSOrderedDescending;
        } else {
            return NSOrderedSame;
        }
    }];
    
    for (id<Command> task in sortedTasks) {
        [task execute];
    }
    [self.taskQueue removeAllObjects];
}

- (void)pauseTasks {
    NSLog(@"pauseTasks");
    for (id<Command> task in self.taskQueue) {
        if ([task respondsToSelector:@selector(pause)]) {
            [task pause];
        }
    }
}

- (void)resumeTasks {
    NSLog(@"resumeTasks");
    for (id<Command> task in self.taskQueue) {
        if ([task respondsToSelector:@selector(resume)]) {
            [task resume];
        }
    }
}

@end
