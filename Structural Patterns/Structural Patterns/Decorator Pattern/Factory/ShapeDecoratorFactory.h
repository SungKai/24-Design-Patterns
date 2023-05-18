//
//  ShapeDecoratorFactory.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

NS_ASSUME_NONNULL_BEGIN

@interface ShapeDecoratorFactory : NSObject

+ (id<Shape>)decoratedShapeWithType:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
