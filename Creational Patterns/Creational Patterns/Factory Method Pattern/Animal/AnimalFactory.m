//
//  AnimalFactory.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/4.
//

#import "AnimalFactory.h"

@implementation AnimalFactory

+ (Animal *)creatAnimalWithType:(NSString *)type {
    if ([type isEqualToString:@"dog"]) {
        return [[Dog alloc] init];
    } else if ([type isEqualToString:@"cat"]) {
        return [[Cat alloc] init];
    } else {
        return nil;
    }
}

@end
