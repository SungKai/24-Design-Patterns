//
//  Context.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#import "Context.h"

@implementation Context

- (NSNumber *)valueForVariable:(NSString *)variableName {
    return self.variables[variableName];
}

@end
