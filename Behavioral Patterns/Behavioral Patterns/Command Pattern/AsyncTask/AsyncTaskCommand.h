//
//  AsyncTaskCommand.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 异步任务命令类

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface AsyncTaskCommand : NSObject <Command>

@property (nonatomic, strong) NSString *taskName;
@property (nonatomic) NSInteger priority;
@property (nonatomic) BOOL paused;

- (instancetype)initWithTaskName:(NSString *)taskName priority:(NSInteger)priority;

@end

NS_ASSUME_NONNULL_END
