//
//  LoginViewController.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.blackColor;
    UIButton *loginBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(loginButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
}

- (void)loginButtonTapped {
    // 执行登录操作
    // ...
    
    // 发送登录完成的通知
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LoginCompletedNotification" object:nil];
}

@end
