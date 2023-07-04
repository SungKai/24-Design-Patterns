//
//  Caretaker.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "Caretaker.h"

@implementation Caretaker

- (instancetype)init {
    self = [super init];
    if (self) {
        _mementos = [NSMutableArray array];
    }
    return self;
}

- (void)addMemento:(Memento *)memento {
    [self.mementos addObject:memento];
}

- (Memento *)getMementoAtIndex:(NSUInteger)index {
    if (index < self.mementos.count) {
        return self.mementos[index];
    }
    return nil;
}


@end
