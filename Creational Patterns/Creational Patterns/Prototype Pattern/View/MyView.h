//
//  MyView.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyView : UIView <NSCopying>

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *button;

@end

NS_ASSUME_NONNULL_END
