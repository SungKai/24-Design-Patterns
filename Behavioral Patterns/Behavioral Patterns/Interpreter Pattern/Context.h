//
//  Context.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 上下文:包含解释器解释的全局信息

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Context : NSObject

@property (nonatomic, strong) NSDictionary<NSString *, NSNumber *> *variables;

- (NSNumber *)valueForVariable:(NSString *)variableName;

@end

NS_ASSUME_NONNULL_END
