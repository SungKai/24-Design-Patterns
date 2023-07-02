//
//  RequestValidityHandler.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import "RequestValidityHandler.h"

@implementation RequestValidityHandler

- (void)handleRequest:(NSDictionary *)request {
    if ([self isRequestValid:request]) {
        NSLog(@"请求合法");
        [self.nextHandler handleRequest:request];
    } else {
        NSLog(@"请求不合法，终止处理");
    }
}

- (BOOL)isRequestValid:(NSDictionary *)request {
    // 实现请求合法性的判断逻辑
    // ...
    return YES;
}

@end
