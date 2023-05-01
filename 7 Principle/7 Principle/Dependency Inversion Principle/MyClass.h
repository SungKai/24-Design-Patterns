//
//  MyClass.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import <Foundation/Foundation.h>

#import "LoggerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyClass : NSObject

@property (nonatomic, strong) id<LoggerProtocol> logger;

- (void)log;

@end

NS_ASSUME_NONNULL_END
