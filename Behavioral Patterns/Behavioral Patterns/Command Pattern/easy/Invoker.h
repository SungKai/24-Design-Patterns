//
//  Invoker.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject

- (void)setCommand:(id<Command>)command;

- (void)executeCommand;

@end

NS_ASSUME_NONNULL_END
