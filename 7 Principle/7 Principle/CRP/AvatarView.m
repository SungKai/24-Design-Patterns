//
//  AvatarView.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/2.
//

#import "AvatarView.h"

@implementation AvatarView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"0"]];
        _imageView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleAvatarTap)];
        [_imageView addGestureRecognizer:tapGesture];
        [self addSubview:_imageView];
    }
    return self;
}

#pragma mark - Method

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(100, 100, 100, 100);
}

- (void)handleAvatarTap {
    if (self.avatarTappedBlock) {
        self.avatarTappedBlock();
    }
}

@end
