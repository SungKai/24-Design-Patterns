//
//  ConcreteAggregate.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//


#import "ConcreteAggregate.h"

@implementation ConcreteAggregate

- (instancetype)initWithCollection:(NSArray *)collection {
    self = [super init];
    if (self) {
        _collection = collection;
    }
    return self;
}

- (id<Iterator>)createIterator {
    return [[ConcreteIterator alloc] initWithCollection:self.collection];
}


@end
