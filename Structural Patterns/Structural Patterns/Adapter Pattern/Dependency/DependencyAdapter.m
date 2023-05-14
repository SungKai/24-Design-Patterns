//
//  DependencyAdapter.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/14.
//

#import "DependencyAdapter.h"

@implementation DependencyAdapter

// MARK: <NewAPI>

- (void)newRequest {
    [self.oldAPI legacyRequest];  // 调用旧接口的方法
    NSLog(@"执行适配后的新请求");
}

@end
