//
//  ResumeDirector.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import <Foundation/Foundation.h>
#import "ResumeBuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

// 简历指导者类

@interface ResumeDirector : NSObject

@property (nonatomic, strong) id<ResumeBuilderProtocol> builder;

- (instancetype)initWithBuilder:(id<ResumeBuilderProtocol>)builder;
- (NSString *)construct;

@end

NS_ASSUME_NONNULL_END
