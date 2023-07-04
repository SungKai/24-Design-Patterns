//
//  ConcreteCommand.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "ConcreteCommand.h"

@implementation ConcreteCommand

- (instancetype)initWithReceiver:(Receiver *)receiver {
    self = [super init];
    if (self) {
        _receiver = receiver;
    }
    return self;
}

- (void)execute {
    [self.receiver performAction];
}

@end
