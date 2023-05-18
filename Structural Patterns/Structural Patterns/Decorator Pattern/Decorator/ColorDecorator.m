//
//  ColorDecorator.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/18.
//

#import "ColorDecorator.h"

@implementation ColorDecorator

- (instancetype)initWithShape:(id<Shape>)shape {
    self = [super init];
    if (self) {
        self.shape = shape;
    }
    return self;
}

- (void)draw {
    [self.shape draw];
    NSLog(@"添加颜色");
}


@end
