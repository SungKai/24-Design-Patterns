//
//  NetworkSingleton.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "NetworkSingleton.h"

@implementation NetworkSingleton

/// 创建单例
+ (instancetype _Nonnull)shareManager {
    static dispatch_once_t onceToken;
    static NetworkSingleton *_shareManager = nil;
    dispatch_once(&onceToken, ^{
        _shareManager = [[self alloc] init];
    });
    return _shareManager;
}

@end
