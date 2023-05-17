//
//  NetworkClient.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import <Foundation/Foundation.h>
#import "NetworkRequestProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface NetworkClient : NSObject

@property (nonatomic, strong) id <NetworkRequestProtocol> request;

- (void)makeRequestWithURL:(NSURL *)url;

@end

NS_ASSUME_NONNULL_END
