//
//  Calculator.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/3.
//

// 上下文类：计算器
#import <Foundation/Foundation.h>
#import "Strategy.h"
    
NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

@property (nonatomic, strong) id<Strategy> strategy;

- (NSInteger)performOperationWithNumber:(NSInteger)number1 andNumber:(NSInteger)number2;

@end

NS_ASSUME_NONNULL_END
