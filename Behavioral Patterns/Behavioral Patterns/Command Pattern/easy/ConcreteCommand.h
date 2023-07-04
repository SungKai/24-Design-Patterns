//
//  ConcreteCommand.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "Receiver.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteCommand : NSObject <Command>

@property (nonatomic, strong) Receiver *receiver;

- (instancetype)initWithReceiver:(Receiver *)receiver;

@end

NS_ASSUME_NONNULL_END
