//
//  ColorDecorator.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/18.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

NS_ASSUME_NONNULL_BEGIN

@interface ColorDecorator : NSObject <Shape>

@property (nonatomic, strong) id<Shape> shape;

- (instancetype)initWithShape:(id<Shape>)shape;

@end

NS_ASSUME_NONNULL_END
