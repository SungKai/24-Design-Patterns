//
//  LoggerProtocol.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#ifndef LoggerProtocol_h
#define LoggerProtocol_h

// 面向接口编程

@protocol LoggerProtocol <NSObject>

- (void)log:(NSString *)message;

@end

#endif /* LoggerProtocol_h */
