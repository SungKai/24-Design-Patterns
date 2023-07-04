//
//  ConcreteElementA.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#import "ConcreteElementA.h"

@implementation ConcreteElementA

/// 通过将访问者对象传递给元素，元素可以将自身委托给访问者来执行特定的操作
- (void)acceptVisitor:(id)visitor {
    [visitor visitElementA:self];
}

- (NSString *)operationA {
    return @"ConcreteElementA operation";
}


@end
