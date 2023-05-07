//
//  MyView.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "MyView.h"

@implementation MyView

// 实现复制方法
- (instancetype)copyWithZone:(NSZone *)zone {
    MyView *copyView = [[[self class] allocWithZone:zone] init];
    copyView.titleLabel = self.titleLabel;
    copyView.button = self.button;
    return copyView;
}

@end
