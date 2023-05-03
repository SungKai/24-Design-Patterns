//
//  TaskPerformer.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/3.
//

#import "TaskPerformer.h"

@implementation TaskPerformer

- (void)performDailyTasksForEmployee:(Employee *)employee {
    // 执行员工日常任务的代码
    NSLog(@"performDailyTasksForEmployee: name: %@, age: %ld, department: %@", employee.name, employee.age, employee.department);
}

@end
