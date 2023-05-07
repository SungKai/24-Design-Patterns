//
//  ResumeDirector.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "ResumeDirector.h"

@implementation ResumeDirector

- (instancetype)initWithBuilder:(id<ResumeBuilderProtocol>)builder {
    if (self = [super init]) {
        _builder = builder;
    }
    return self;
}

- (NSString *)construct {
    [self.builder buildBasicInfoWithName:@"John"
                                   email:@"john@example.com"
                                   phone:@"1234567890"
                                 address:@"123 Main St."];
    [self.builder buildEducationWithDegree:@"Bachelor"
                                     school:@"University"
                                       date:@"2010-2014"];
    [self.builder buildWorkExperienceWithCompany:@"ABC Company"
                                        position:@"Software Engineer"
                                            date:@"2014-2016"];
    return [self.builder getResult];
}

@end
