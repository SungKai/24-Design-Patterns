//
//  iOSFactory.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "iOSFactory.h"

@implementation iOSFactory


#pragma mark - AbstractFactoryProtocol

- (UIButton *)creatButton {
    return [UIButton buttonWithType:UIButtonTypeSystem];
}

- (UILabel *)creatLabel {
    return [[UILabel alloc] init];
}

@end
