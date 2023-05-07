//
//  NetworkSingleton.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkSingleton : NSObject

/// 创建单例
+ (instancetype _Nonnull)shareManager;

@end

NS_ASSUME_NONNULL_END
