//
//  ProfileViewController.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/2.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.avatarView = [[AvatarView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.avatarView.avatarTappedBlock = ^{
        NSLog(@"Avatar tapped in ProfileViewController");
    };
    [self.view addSubview:self.avatarView];
}

@end
