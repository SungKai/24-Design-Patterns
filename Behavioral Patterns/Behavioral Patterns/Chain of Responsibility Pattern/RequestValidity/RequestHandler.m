//
//  RequestHandler.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import "RequestHandler.h"

@implementation RequestHandler

- (void)handleRequest:(NSDictionary *)request {
    // 默认情况下，将请求传递给下一个处理者
    if (self.nextHandler) {
        [self.nextHandler handleRequest:request];
    }
}

@end
