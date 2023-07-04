//
//  ConcreteElementB.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#import <Foundation/Foundation.h>
#import "Element.h"
#import "Visitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteElementB : NSObject <Element>

- (void)acceptVisitor:(id)visitor;

- (NSString *)operationB;

@end

NS_ASSUME_NONNULL_END
