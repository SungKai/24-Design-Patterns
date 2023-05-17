//
//  NetworkManager.h
//  MVP_ZhihuDaily
//
//  Created by 宋开开 on 2023/4/3.
//

#import <Foundation/Foundation.h>
#import "NetworkManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface NetworkRequestFactory : NSObject

+ (NetworkManager *)creatNetworkManager;

@end

NS_ASSUME_NONNULL_END
