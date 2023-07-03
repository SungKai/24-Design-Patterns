//
//  AdditionStrategy.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/3.
//

#import "AdditionStrategy.h"

@implementation AdditionStrategy

- (NSInteger)executeOperationWithNumber:(NSInteger)number1 andNumber:(NSInteger)number2 {
    return number1 + number2;
}

@end
