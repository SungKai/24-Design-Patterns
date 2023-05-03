//
//  FeedViewController.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/2.
//

#import "FeedViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.avatarView = [[AvatarView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.avatarView.avatarTappedBlock = ^{
        NSLog(@"Avatar tapped in FeedViewController");
    };
    [self.view addSubview:self.avatarView];
}

@end
