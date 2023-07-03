//
//  SubtractionStrategy.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/3.
//

#import "SubtractionStrategy.h"


@implementation SubtractionStrategy

- (NSInteger)executeOperationWithNumber:(NSInteger)number1 andNumber:(NSInteger)number2 {
    return number1 - number2;
}

@end
