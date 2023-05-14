//
//  Adapter.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/14.
//

#import "GeneralizationAdapter.h"

@implementation GeneralizationAdapter

// MARK: <NewAPI>

- (void)newRequest {
    [self legacyRequest];  // 调用旧接口的方法
    NSLog(@"执行适配后的新请求");
}

@end
