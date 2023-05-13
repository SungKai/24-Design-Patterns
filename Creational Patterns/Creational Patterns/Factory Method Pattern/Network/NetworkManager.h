//
//  NetworkManager.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkManager : NSObject

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
