//
//  AdditionExpression.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 非终结符表达式 - 加法

#import <Foundation/Foundation.h>
#import "Expression.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdditionExpression : NSObject <Expression>

@property (nonatomic, strong) id<Expression> leftExpression;
@property (nonatomic, strong) id<Expression> rightExpression;

@end

NS_ASSUME_NONNULL_END
