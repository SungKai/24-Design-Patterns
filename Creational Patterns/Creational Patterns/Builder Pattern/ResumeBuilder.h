//
//  ResumeBuilder.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import <Foundation/Foundation.h>
#import "ResumeBuilderProtocol.h"
#import "Person.h"
#import "Education.h"
#import "WorkExperience.h"

NS_ASSUME_NONNULL_BEGIN

// 简历建造者类

@interface ResumeBuilder : NSObject <ResumeBuilderProtocol>

@property (nonatomic, strong) Person *person;
@property (nonatomic, strong) Education *education;
@property (nonatomic, strong) WorkExperience *workExperience;

@end

NS_ASSUME_NONNULL_END
