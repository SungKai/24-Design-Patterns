//
//  ViewController.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import "ViewController.h"

#import "AutoDriveDecorator.h"

#import "Dog.h"

#import "Logger.h"
#import "MyClass.h"

#import "Database.h"
#import "UserService.h"

#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self interfaceSegregationPrinciple];
    // Do any additional setup after loading the view.
}

// MARK: Open/Closed Principle

- (void)open_closedPrinciple {
    // 创建一辆汽车
    Car *car = [[Car alloc] init];
    car.brand = @"Ford";
    car.price = 100000;
    // 使用装饰器来添加自动驾驶功能
    AutoDriveDecorator *decorator = [[AutoDriveDecorator alloc] initWithCar:car];
    [decorator startEngine];
}

// MARK: LSP

- (void)lsp {
    Animal *animal = [[Dog alloc] init];
    [animal run];  // output: Dog is running
}

// MARK: Dependency Inversion Principle

- (void)dependencyInversionPrinciple {
    MyClass *logClass = [[MyClass alloc] init];
    Logger *logger = [[Logger alloc] init];
    logClass.logger = logger;
    [logClass log];
}

// MARK: Interface Segregation Principle

- (void)interfaceSegregationPrinciple {
    Database *database = [[Database alloc] init];
    UserService *userService = [[UserService alloc] initWithDatabase:database];
    [database connect];
    [userService saveUser:@"SungKaikai" withEmail:@"aaaa.com"];
    [database disConnect];
}

// MARK: LoD

- (void)lod {
    User *user = [[User alloc] init];
    user.name = @"Kaikai Pike";
    // apple
    Goods *apple = [[Goods alloc] init];
    apple.name = @"apple";
    apple.price = 5.0;
    // orange
    Goods *orange = [[Goods alloc] init];
    orange.name = @"orange";
    orange.price = 5.0;
    
    // 用户添加商品到购物车
    [user addGoodsToCart:apple];
    [user addGoodsToCart:orange];
    // 结账
    [user checkOut];
}

@end
