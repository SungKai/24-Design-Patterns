//
//  NetworkRequest.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkRequest : NSObject <NSCopying>

@property (nonatomic, copy) NSString *urlString;
@property (nonatomic, strong) NSDictionary *parameters;

- (void)sendRequestWithSuccess:(void (^)(id responseObject))success
                       failure:(void (^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
