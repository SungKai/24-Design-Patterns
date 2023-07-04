//
//  ConcreteIterator.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "ConcreteIterator.h"

@implementation ConcreteIterator

- (instancetype)initWithCollection:(NSArray *)collection {
    self = [super init];
    if (self) {
        _collection = collection;
        _currentIndex = 0;
    }
    return self;
}

- (BOOL)hasNext {
    return self.currentIndex < self.collection.count;
}

- (id)next {
    if (![self hasNext]) {
        return nil;
    }
    id item = self.collection[self.currentIndex];
    self.currentIndex ++;
    return item;
}

@end
