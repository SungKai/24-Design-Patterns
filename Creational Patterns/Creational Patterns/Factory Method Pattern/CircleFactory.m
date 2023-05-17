//
//  CircleFactory.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/15.
//

#import "CircleFactory.h"

@implementation CircleFactory

- (id<ShapeProtocol>)creatShape {
    return [[Circle alloc] init];
}

@end
