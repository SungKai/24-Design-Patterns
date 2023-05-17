//
//  RectangleFactory.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/15.
//

#import "RectangleFactory.h"

@implementation RectangleFactory

- (id<ShapeProtocol>)creatShape {
    return [[Rectangle alloc] init];
}

@end
