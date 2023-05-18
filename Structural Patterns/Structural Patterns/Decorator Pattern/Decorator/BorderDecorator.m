//
//  BorderDecorator.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/18.
//

#import "BorderDecorator.h"

@implementation BorderDecorator

- (instancetype)initWithShape:(id<Shape>)shape {
    self = [super init];
    if (self) {
        _shape = shape;
    }
    return self;
}

- (void)draw {
    [self.shape draw];
    NSLog(@"添加边框");
}

@end
