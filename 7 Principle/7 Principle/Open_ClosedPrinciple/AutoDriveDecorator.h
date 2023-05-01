//
//  AutoDriveDecorator.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import "CarDecorator.h"

NS_ASSUME_NONNULL_BEGIN

// 具体装饰器：自动驾驶装饰器

@interface AutoDriveDecorator : CarDecorator

- (void)startAutoDriving;

@end

NS_ASSUME_NONNULL_END
