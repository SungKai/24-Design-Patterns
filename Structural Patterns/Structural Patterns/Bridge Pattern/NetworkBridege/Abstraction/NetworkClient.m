//
//  NetworkClient.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import "NetworkClient.h"

@implementation NetworkClient

- (void)makeRequestWithURL:(NSURL *)url {
    [self.request sendRequestWithURL:url];
}

@end
