//
//  NetworkManager.m
//  MVP_ZhihuDaily
//
//  Created by 宋开开 on 2023/4/3.
//

#import "NetworkRequestFactory.h"

@implementation NetworkRequestFactory

+ (NetworkManager *)creatNetworkManager {
    return [NetworkManager shareManager];
}


@end
