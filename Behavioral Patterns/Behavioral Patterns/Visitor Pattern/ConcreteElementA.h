//
//  ConcreteElementA.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

// 具体元素类
#import <Foundation/Foundation.h>
#import "Element.h"
#import "Visitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteElementA : NSObject <Element>

- (void)acceptVisitor:(id)visitor;

- (NSString *)operationA;

@end

NS_ASSUME_NONNULL_END
