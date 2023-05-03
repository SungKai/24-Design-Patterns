//
//  TaskPerformer.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/3.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface TaskPerformer : NSObject

- (void)performDailyTasksForEmployee:(Employee *)employee;

@end

NS_ASSUME_NONNULL_END
