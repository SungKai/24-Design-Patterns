//
//  RequestHandler.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RequestHandler : NSObject

@property (nonatomic, strong) RequestHandler *nextHandler;

- (void)handleRequest:(NSDictionary *)request;

@end

NS_ASSUME_NONNULL_END
