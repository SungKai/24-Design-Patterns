//
//  Mediator.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#ifndef Mediator_h
#define Mediator_h

// 中介者接口

@protocol Mediator <NSObject>

- (void)sendMessage:(NSString *)message fromColleague:(id)colleague;

@end

#endif /* Mediator_h */
