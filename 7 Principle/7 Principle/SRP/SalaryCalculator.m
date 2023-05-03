//
//  SalaryCalculator.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/3.
//

#import "SalaryCalculator.h"

@implementation SalaryCalculator

- (void)calculateSalaryForEmployee:(Employee *)employee {
    // 计算员工薪水的代码
    NSLog(@"calculateSalaryForEmployee: name: %@, age: %ld, department: %@", employee.name, employee.age, employee.department);
}

@end
