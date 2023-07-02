//
//  ProfileViewController.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.grayColor;
    // 注册对登录完成通知的观察
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(loginCompletedNotificationReceived) name:@"LoginCompletedNotification"
                                               object:nil];
}

- (void)dealloc {
    // 在视图控制器销毁时，要取消观察
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)loginCompletedNotificationReceived {
    // 收到登录完成通知后的操作
    // ...
    self.view.backgroundColor = UIColor.systemBlueColor;
    NSLog(@"登录成功");
}

@end
