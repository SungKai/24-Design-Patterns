//
//  ViewStyleViewController.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import "ViewStyleViewController.h"
#import "LightThemeStyle.h"

@implementation ViewStyleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建并配置不同的视图样式
    self.viewStyle = [[LightThemeStyle alloc] init];
    
    // 设置视图背景颜色
    self.view.backgroundColor = [self.viewStyle backgroundColor];
    
    // 创建并配置视图控件，使用视图样式的文本颜色
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    label.textColor = [self.viewStyle textColor];
    label.text = @"Hello, Bridge Pattern!";
    [self.view addSubview:label];
}


@end
