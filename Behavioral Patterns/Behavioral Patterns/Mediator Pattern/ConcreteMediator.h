//
//  ConcreteMediator.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 具体中介者

#import <Foundation/Foundation.h>
#import "Mediator.h"
#import "Colleague.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteMediator : NSObject <Mediator>

@property (nonatomic, strong) id colleague1;
@property (nonatomic, strong) id colleague2;

@end

NS_ASSUME_NONNULL_END
