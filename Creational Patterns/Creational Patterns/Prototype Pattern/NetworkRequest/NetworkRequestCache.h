//
//  NetworkRequestCache.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/8.
//

#import <Foundation/Foundation.h>
#import "NetworkRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface NetworkRequestCache : NSObject

/// 缓存信息
@property (nonatomic, strong) NSMutableDictionary *requestCache;

+ (instancetype)sharedCache;

/// 缓存
- (void)cacheRequest:(NetworkRequest *)request;

- (NetworkRequest *)getCacheRequestForUrlString:(NSString *)urlString parameters:(NSDictionary *)parameters;

@end

NS_ASSUME_NONNULL_END
