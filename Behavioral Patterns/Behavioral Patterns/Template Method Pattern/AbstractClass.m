//
//  AbstractClass.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/3.
//

// 基类
#import "AbstractClass.h"

@implementation AbstractClass

- (void)templateMethod {
    // 执行算法的骨架
    [self primitiveOperation1];
    [self primitiveOperation2];
}

- (void)primitiveOperation1 {
    // 默认实现或者空实现，子类可以选择性地重写
}

- (void)primitiveOperation2 {
    // 默认实现或者空实现，子类可以选择性地重写
}


@end
