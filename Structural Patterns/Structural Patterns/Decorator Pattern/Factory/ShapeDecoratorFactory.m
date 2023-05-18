//
//  ShapeDecoratorFactory.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import "ShapeDecoratorFactory.h"
#import "Rectangle.h"
#import "Circle.h"

#import "ColorDecorator.h"
#import "BorderDecorator.h"

@implementation ShapeDecoratorFactory

+ (id<Shape>)decoratedShapeWithType:(NSString *)type {
    id<Shape> shape;
    if ([type isEqualToString:@"rectangle"]) {
        shape = [[Rectangle alloc] init];
    } else if ([type isEqualToString:@"circle"]) {
        shape = [[Circle alloc] init];
    }
    
    // 创建装饰器对象，并返回装饰后的形状
    shape = [[ColorDecorator alloc] initWithShape:shape];
    shape = [[BorderDecorator alloc] initWithShape:shape];
    
    return shape;
}

@end
