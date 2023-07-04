//
//  Colleague.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 抽象同事类
#import <Foundation/Foundation.h>
#import "Mediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface Colleague : NSObject

@property (nonatomic, weak) id<Mediator> mediator;

- (instancetype)initWithMediator:(id<Mediator>)mediator;
- (void)send:(NSString *)message;
- (void)receiveMessage:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
