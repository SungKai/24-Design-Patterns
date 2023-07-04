//
//  ConcreteElementB.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#import "ConcreteElementB.h"

@implementation ConcreteElementB

- (void)acceptVisitor:(id)visitor {
    [visitor visitElementB:self];
}

- (NSString *)operationB {
    return @"ConcreteElementB operation";
}

@end
