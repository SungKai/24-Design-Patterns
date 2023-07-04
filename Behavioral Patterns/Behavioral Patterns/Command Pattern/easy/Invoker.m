//
//  Invoker.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "Invoker.h"

@interface Invoker ()

@property (nonatomic, strong) id<Command> command;
        
@end

@implementation Invoker

- (void)setCommand:(id<Command>)command {
    _command = command;
}

- (void)executeCommand {
    [self.command execute];
}

@end
