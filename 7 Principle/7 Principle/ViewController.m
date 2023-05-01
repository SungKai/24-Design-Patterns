//
//  ViewController.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import "ViewController.h"

#import "Car.h"
#import "AutoDriveDecorator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)open_closedPrinciple {
    // 创建一辆汽车
    Car *car = [[Car alloc] init];
    car.brand = @"Ford";
    car.price = 100000;
    // 使用装饰器来添加自动驾驶功能
    AutoDriveDecorator *decorator = [[AutoDriveDecorator alloc] initWithCar:car];
    [decorator startEngine];
}

@end
