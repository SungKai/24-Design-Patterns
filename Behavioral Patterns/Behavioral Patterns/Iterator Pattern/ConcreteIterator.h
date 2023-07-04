//
//  ConcreteIterator.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 具体迭代器类

#import <Foundation/Foundation.h>
#import "Iterator.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteIterator : NSObject <Iterator>

@property (nonatomic, strong) NSArray *collection;
@property (nonatomic, assign) NSInteger currentIndex;

- (instancetype)initWithCollection:(NSArray *)collection;

@end

NS_ASSUME_NONNULL_END
