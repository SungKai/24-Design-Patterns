//
//  Originator.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "Originator.h"

@implementation Originator

- (Memento *)createMemento {
    Memento *memento = [[Memento alloc] init];
    memento.state = self.state;
    return memento;
}

- (void)restoreFromMemento:(Memento *)memento {
    self.state = memento.state;
}

@end
