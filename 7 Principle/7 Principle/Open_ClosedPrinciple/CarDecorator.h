//
//  CarDecorator.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import "Car.h"

NS_ASSUME_NONNULL_BEGIN

// 新需求：添加自动驾驶功能
// 抽象类：汽车装饰器

@interface CarDecorator : Car

@property (nonatomic, strong) Car *car;

- (instancetype)initWithCar:(Car *)car;

@end

NS_ASSUME_NONNULL_END
