//
//  HTTPRequest.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import "HTTPRequest.h"

@implementation HTTPRequest

- (void)sendRequestWithURL:(NSURL *)url {
    NSLog(@"Sending HTTP request to URL: %@", url);
    // 发送HTTP请求的具体实现...
}

@end
