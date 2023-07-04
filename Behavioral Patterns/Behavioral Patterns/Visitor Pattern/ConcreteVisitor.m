//
//  ConcreteVisitor.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#import "ConcreteVisitor.h"
#import "ConcreteElementA.h"
#import "ConcreteElementB.h"

@implementation ConcreteVisitor

- (void)visitElementA:(ConcreteElementA *)elementA {
    NSString *result = [elementA operationA];
    NSLog(@"Visitor is operating on ElementA: %@", result);
}

- (void)visitElementB:(ConcreteElementB *)elementB {
    NSString *result = [elementB operationB];
    NSLog(@"Visitor is operating on ElementB: %@", result);
}

@end
