//
//  NumberExpression.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 终结符表达式

#import <Foundation/Foundation.h>
#import "Expression.h"

NS_ASSUME_NONNULL_BEGIN

@interface NumberExpression : NSObject <Expression>

@property (nonatomic, assign) NSInteger number;

@end

NS_ASSUME_NONNULL_END
