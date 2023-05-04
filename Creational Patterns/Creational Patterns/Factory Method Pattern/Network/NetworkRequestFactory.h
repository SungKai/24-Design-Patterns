//
//  NetworkManager.h
//  MVP_ZhihuDaily
//
//  Created by 宋开开 on 2023/4/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkRequestFactory : NSObject

/// 创建单例
+ (instancetype _Nonnull)shareManager;

/// 请求类型
typedef NS_ENUM(NSUInteger, NetworkManagerRequestType) {
    NetworkManagerRequestTypeGet,
    NetworkManagerRequestTypePost,
    NetworkManagerRequestTypePut,
    NetworkManagerRequestTypeDelete
};

/// 统一请求方法 responseSerializer默认都为AFJSONResponseSerializer
- (void)requestURL:(NSString * _Nonnull)url
              type:(NetworkManagerRequestType)requestType
        parameters:(id _Nonnull)parameters
          progress:(void (^_Nullable)(NSProgress * _Nullable progress))progress
           success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success
           failure:(void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error))failure;

@end

NS_ASSUME_NONNULL_END
