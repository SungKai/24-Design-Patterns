//
//  ConcreteHandlerC.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import "ConcreteHandlerC.h"

@implementation ConcreteHandlerC

- (void)handleRequest:(NSInteger)request {
    if (request >= 20) {
        NSLog(@"ConcreteHandlerC 处理了请求 %ld", (long)request);
    } else if (self.nextHandler) {
        [self.nextHandler handleRequest:request];
    }
}

@end
