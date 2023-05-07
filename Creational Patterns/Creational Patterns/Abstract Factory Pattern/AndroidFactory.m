//
//  AndroidFactory.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "AndroidFactory.h"

@implementation AndroidFactory

// MARK: AbstractFactoryProtocol

- (UIButton *)creatButton {
    return [UIButton buttonWithType:UIButtonTypeRoundedRect];
}

- (UILabel *)creatLabel {
    return [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
}

@end
