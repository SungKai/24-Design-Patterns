//
//  Calculator.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/3.
//

#import "Calculator.h"

@implementation Calculator

- (NSInteger)performOperationWithNumber:(NSInteger)number1 andNumber:(NSInteger)number2 {
    return [self.strategy executeOperationWithNumber:number1 andNumber:number2];
}

@end
