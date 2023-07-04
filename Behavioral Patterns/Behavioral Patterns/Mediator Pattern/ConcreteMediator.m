//
//  ConcreteMediator.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator

- (void)sendMessage:(id)message fromColleague:(id)colleague {
    if (colleague == self.colleague1) {
        // colleague1发送消息时，通知colleague2
        [self.colleague2 receiveMessage:message];
    } else if (colleague == self.colleague2) {
        // colleague2发送消息时，通知colleague1
        [self.colleague1 receiveMessage:message];
    }
}

@end
