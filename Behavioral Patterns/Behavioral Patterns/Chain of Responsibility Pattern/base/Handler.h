//
//  Handler.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Handler : NSObject

@property (nonatomic, strong) Handler *nextHandler;

- (void)handleRequest:(NSInteger)request;

@end

NS_ASSUME_NONNULL_END
