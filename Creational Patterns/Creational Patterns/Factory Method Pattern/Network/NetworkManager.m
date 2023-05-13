//
//  NetworkManager.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/13.
//

#import "NetworkManager.h"
#import <AFNetworking/AFNetworking.h>

@interface NetworkManager ()

/// AFHTTPSessionManager
@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

@end

@implementation NetworkManager

/// 创建单例
+ (instancetype _Nonnull)shareManager {
    static dispatch_once_t onceToken;
    static NetworkManager *_shareManager = nil;
    dispatch_once(&onceToken, ^{
        _shareManager = [[self alloc] init];
    });
    return _shareManager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.sessionManager = [AFHTTPSessionManager manager];
        self.sessionManager.requestSerializer = [AFJSONRequestSerializer serializer];
        // 默认上传JSON 格式
        self.sessionManager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    return self;
}

/// 统一请求方法 responseSerializer默认都为AFJSONResponseSerializer
- (void)requestURL:(NSString * _Nonnull)url
              type:(NetworkManagerRequestType)requestType
        parameters:(id _Nonnull)parameters
          progress:(void (^_Nullable)(NSProgress * _Nullable progress))progress
           success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success
           failure:(void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error))failure {
    switch (requestType) {
        case NetworkManagerRequestTypeGet:
            [self GETRequestURL:url
                     parameters:parameters
                       progress:progress
                        success:success
                        failure:failure];
            break;
        case NetworkManagerRequestTypePost:
            [self POSTRequestURL:url
                     parameters:parameters
                       progress:progress
                        success:success
                        failure:failure];
            break;
        case NetworkManagerRequestTypePut:
            [self PUTRequestURL:url
                     parameters:parameters
                       progress:progress
                        success:success
                        failure:failure];
            break;
        case NetworkManagerRequestTypeDelete:
            [self DELETERequestURL:url
                     parameters:parameters
                       progress:progress
                        success:success
                        failure:failure];
            break;
        default:
            break;
    }
}

/// GET 请求
- (void)GETRequestURL:(NSString * _Nonnull)url
           parameters:(id _Nonnull)parameters
             progress:(void (^_Nullable)(NSProgress * _Nullable progress))progress
              success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success
              failure:(void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error))failure {
    [self.sessionManager
     GET:url
     parameters:parameters
     progress:progress
     success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(task, responseObject);
        }
    }
     failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(task, error);
        }
    }];
}

/// POST
- (void)POSTRequestURL:(NSString * _Nonnull)url
           parameters:(id _Nonnull)parameters
             progress:(void (^_Nullable)(NSProgress * _Nullable progress))progress
              success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success
              failure:(void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error))failure {
    [self.sessionManager
     POST:url
     parameters:parameters
     progress:progress
     success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(task, responseObject);
        }
    }
     failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(task, error);
        }
    }];
}

/// PUT
- (void)PUTRequestURL:(NSString * _Nonnull)url
           parameters:(id _Nonnull)parameters
             progress:(void (^_Nullable)(NSProgress * _Nullable progress))progress
              success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success
              failure:(void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error))failure {
    [self.sessionManager PUT:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(task, responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(task, error);
    }];
}

/// DELETE
- (void)DELETERequestURL:(NSString * _Nonnull)url
              parameters:(id _Nonnull)parameters
                progress:(void (^_Nullable)(NSProgress * _Nullable progress))progress
                 success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success
                 failure:(void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error))failure {
    [self.sessionManager DELETE:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(task, responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(task, error);
    }];
}

@end
