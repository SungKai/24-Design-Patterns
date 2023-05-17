//
//  Abstraction.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import "Abstraction.h"

@implementation Abstraction

- (void)doAction {
    [self.implementor doSomething];
}

@end
