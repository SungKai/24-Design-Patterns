//
//  AdditionExpression.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "AdditionExpression.h"

@implementation AdditionExpression

- (NSInteger)interpretWithContext:(NSDictionary<NSString *, NSNumber *> *)context {
    NSInteger leftValue = [self.leftExpression interpretWithContext:context];
    NSInteger rightValue = [self.rightExpression interpretWithContext:context];
    return leftValue + rightValue;
}

@end
