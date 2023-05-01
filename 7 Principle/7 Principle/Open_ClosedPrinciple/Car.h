//
//  Car.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 原有代码：汽车类

@interface Car : NSObject

@property (nonatomic, copy) NSString *brand;

@property (nonatomic, assign) NSInteger price;

- (void)startEngine;

@end

NS_ASSUME_NONNULL_END
