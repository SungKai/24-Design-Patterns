//
//  ResumeBuilder.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#ifndef ResumeBuilder_h
#define ResumeBuilder_h

// 建造者接口

@protocol ResumeBuilderProtocol <NSObject>

- (void)buildBasicInfoWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone address:(NSString *)address;
- (void)buildEducationWithDegree:(NSString *)degree school:(NSString *)school date:(NSString *)date;
- (void)buildWorkExperienceWithCompany:(NSString *)company position:(NSString *)position date:(NSString *)date;
- (NSString *)getResult;

@end
#endif /* ResumeBuilder_h */
