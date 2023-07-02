//
//  UserPermissionHandler.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import "UserPermissionHandler.h"

@implementation UserPermissionHandler

- (void)handleRequest:(NSDictionary *)request {
    if ([self hasPermission:request]) {
        NSLog(@"用户权限验证通过");
        [self.nextHandler handleRequest:request];
    } else {
        NSLog(@"用户权限不足，终止处理");
    }
}

- (BOOL)hasPermission:(NSDictionary *)request {
    // 实现用户权限验证逻辑
    // ...
    return YES;
}

@end
