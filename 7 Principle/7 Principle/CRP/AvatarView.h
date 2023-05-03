//
//  AvatarView.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AvatarView : UIView

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, copy) void (^avatarTappedBlock) (void);
@end

NS_ASSUME_NONNULL_END
