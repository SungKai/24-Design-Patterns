//
//  NumberExpression.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "NumberExpression.h"

@implementation NumberExpression

- (NSInteger)interpretWithContext:(NSDictionary<NSString *, NSNumber *> *)context {
    return self.number;
}


@end
