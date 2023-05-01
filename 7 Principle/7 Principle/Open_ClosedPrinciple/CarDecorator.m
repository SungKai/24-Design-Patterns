//
//  CarDecorator.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import "CarDecorator.h"

@implementation CarDecorator

- (instancetype)initWithCar:(Car *)car {
    self = [super init];
    if (self) {
        self.car = car;
    }
    return self;
}

- (void)startEngine {
    [self.car startEngine];
}

@end
