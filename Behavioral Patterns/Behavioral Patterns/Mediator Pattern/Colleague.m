//
//  Colleague.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "Colleague.h"

@implementation Colleague

- (instancetype)initWithMediator:(id<Mediator>)mediator {
    self = [super init];
    if (self) {
        _mediator = mediator;
    }
    return self;
}

- (void)send:(NSString *)message {
    [self.mediator sendMessage:message fromColleague:self];
}

- (void)receiveMessage:(NSString *)message {
    NSLog(@"Received message: %@", message);
}

@end
