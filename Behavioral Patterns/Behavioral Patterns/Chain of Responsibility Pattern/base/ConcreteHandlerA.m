//
//  ConcreteHandlerA.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import "ConcreteHandlerA.h"

@implementation ConcreteHandlerA

- (void)handleRequest:(NSInteger)request {
    if (request < 10) {
        NSLog(@"ConcreteHandlerA 处理了请求 %ld", (long)request);
    } else if (self.nextHandler) {
        [self.nextHandler handleRequest:request];
    }
}

@end
