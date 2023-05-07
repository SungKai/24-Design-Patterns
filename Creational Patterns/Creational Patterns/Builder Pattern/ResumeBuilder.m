//
//  ResumeBuilder.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "ResumeBuilder.h"

@implementation ResumeBuilder

- (void)buildBasicInfoWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone address:(NSString *)address {
    self.person = [[Person alloc] init];
    self.person.name = name;
    self.person.email = email;
    self.person.phone = phone;
    self.person.address = address;
}

- (void)buildEducationWithDegree:(NSString *)degree school:(NSString *)school date:(NSString *)date {
    self.education = [[Education alloc] init];
    self.education.degree = degree;
    self.education.school = school;
    self.education.date = date;
}

- (void)buildWorkExperienceWithCompany:(NSString *)company position:(NSString *)position date:(NSString *)date {
    self.workExperience = [[WorkExperience alloc] init];
    self.workExperience.company = company;
    self.workExperience.position = position;
    self.workExperience.date = date;
}

- (NSString *)getResult {
    NSMutableString *result = [NSMutableString string];
    [result appendFormat:@"Name: %@\n", self.person.name];
    [result appendFormat:@"Email: %@\n", self.person.email];
    [result appendFormat:@"Phone: %@\n", self.person.phone];
    [result appendFormat:@"Address: %@\n", self.person.address];
    [result appendFormat:@"\n"];
    [result appendFormat:@"Education:\n"];
    [result appendFormat:@"Degree: %@\n", self.education.degree];
    [result appendFormat:@"School: %@\n", self.education.school];
    [result appendFormat:@"Date: %@\n", self.education.date];
    [result appendFormat:@"\n"];
    [result appendFormat:@"Work Experience:\n"];
    [result appendFormat:@"Company: %@\n", self.workExperience.company];
    [result appendFormat:@"Position: %@\n", self.workExperience.position];
    [result appendFormat:@"Date: %@\n", self.workExperience.date];
    return result;
}

@end
