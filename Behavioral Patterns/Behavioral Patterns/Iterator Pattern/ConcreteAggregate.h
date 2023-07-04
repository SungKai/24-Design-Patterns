//
//  ConcreteAggregate.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 具体集合类

#import <Foundation/Foundation.h>
#import "Aggregate.h"
#import "ConcreteIterator.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteAggregate : NSObject <Aggregate>

@property (nonatomic, strong) NSArray *collection;

- (instancetype)initWithCollection:(NSArray *)collection;

@end

NS_ASSUME_NONNULL_END
