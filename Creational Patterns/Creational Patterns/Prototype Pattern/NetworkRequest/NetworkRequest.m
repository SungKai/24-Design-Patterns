//
//  NetworkRequest.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "NetworkRequest.h"
#import <AFNetworking/AFNetworking.h>

@implementation NetworkRequest

- (void)sendRequestWithSuccess:(void (^)(id _Nonnull))success failure:(void (^)(NSError * _Nonnull))failure {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager
     GET:self.urlString
     parameters:self.parameters
     progress:nil
     success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
    }
     failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

- (id)copyWithZone:(NSZone *)zone {
    NetworkRequest *copy = [[[self class] allocWithZone:zone] init];
    copy.urlString = self.urlString;
    copy.parameters = self.parameters;
    return copy;
}

@end
