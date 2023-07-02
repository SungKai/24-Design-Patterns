//
//  Handler.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import "Handler.h"

@implementation Handler

- (void)handleRequest:(NSInteger)request {
    if (self.nextHandler) {
        [self.nextHandler handleRequest:request];
    }
}

@end
