//
//  NetworkRequestCache.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/8.
//

#import "NetworkRequestCache.h"

@implementation NetworkRequestCache

+ (instancetype)sharedCache {
    static NetworkRequestCache *shareInstance = nil;
    static dispatch_once_t once_token;
    dispatch_once(&once_token, ^{
        shareInstance = [[NetworkRequestCache alloc] init];
    });
    return shareInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.requestCache = [NSMutableDictionary dictionary];
    }
    return self;
}

- (NSString *)cacheKeyForUrlString:(NSString *)urlString parameters:(NSDictionary *)parameters {
    NSMutableString *cacheKey = [NSMutableString stringWithString:urlString];
    NSArray *keys = [[parameters allKeys] sortedArrayUsingSelector:@selector(compare:)];
    for (NSString *key in keys) {
        id value = parameters[key];
        [cacheKey appendFormat:@":%@%@", key, value];
    }
    return [cacheKey copy];
}

- (void)cacheRequest:(NetworkRequest *)request {
    NSString *cacheKey = [self cacheKeyForUrlString:request.urlString parameters:request.parameters];
    [self.requestCache setObject:request forKey:cacheKey];
}

- (NetworkRequest *)getCacheRequestForUrlString:(NSString *)urlString parameters:(NSDictionary *)parameters {
    NSString *cache = [self cacheKeyForUrlString:urlString parameters:parameters];
    NetworkRequest *cacheRequest = [self.requestCache objectForKey:cache];
    if (cacheRequest) {
        return [cacheRequest copy];
    } else {
        return nil;
    }
}

@end
