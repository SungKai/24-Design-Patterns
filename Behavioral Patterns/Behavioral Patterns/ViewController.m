//
//  ViewController.m
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/2.
//

#import "ViewController.h"

#import "ConcreteHandlerA.h"
#import "ConcreteHandlerB.h"
#import "ConcreteHandlerC.h"
#import "RequestValidityHandler.h"
#import "UserPermissionHandler.h"
#import "RequestProcessingHandler.h"

#import "LoginViewController.h"
#import "ProfileViewController.h"

#import "AdditionStrategy.h"
#import "SubtractionStrategy.h"
#import "MultiplicationStrategy.h"
#import "Calculator.h"

#import "ConcreteClass1.h"
#import "ConcreteClass2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self base_chainOfResponsibilityPattern];
//    [self requestValidity_chainOfResponsibilityPattern];
//    [self strategyPattern];
    [self templateMethodPattern];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self observerPattern];
}

// MARK: Chain of Responsibility Pattern

- (void)base_chainOfResponsibilityPattern {
    // 创建处理者对象
    Handler *handlerA = [[ConcreteHandlerA alloc] init];
    Handler *handlerB = [[ConcreteHandlerB alloc] init];
    Handler *handlerC = [[ConcreteHandlerC alloc] init];
    // 设置处理者之间的关系
    handlerA.nextHandler = handlerB;
    handlerB.nextHandler = handlerC;
    // 发送请求
    [handlerA handleRequest:5];
    [handlerA handleRequest:15];
    [handlerC handleRequest:25];
}

- (void)requestValidity_chainOfResponsibilityPattern {
    // 创建处理者对象
    RequestHandler *validHandler = [[RequestValidityHandler alloc] init];
    RequestHandler *permissionHandler = [[UserPermissionHandler alloc] init];
    RequestHandler *processingHandler = [[RequestProcessingHandler alloc] init];
    // 设置处理者之间的关系
    validHandler.nextHandler = permissionHandler;
    permissionHandler.nextHandler = processingHandler;
    // 创建请求
    NSDictionary *request = @ {
        @"data" : @"要处理的数据",
        @"user" : @"当前用户",
        @"token" : @"访问token"
    };
    // 发送请求
    [validHandler handleRequest:request];
}

// MARK: Observer Pattern

- (void)observerPattern {
    ProfileViewController *proVC = [[ProfileViewController alloc] init];
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    [self presentViewController:proVC animated:YES completion:nil];
    [proVC presentViewController:loginVC animated:YES completion:nil];
}

// MARK: Strategy Pattern

- (void)strategyPattern {
    Calculator *calculator = [[Calculator alloc] init];
    // 加法运算
    calculator.strategy = [[AdditionStrategy alloc] init];
    NSInteger result = [calculator performOperationWithNumber:5 andNumber:3];
    NSLog(@"加法结果：%ld", result);
    
    // 减法运算
    calculator.strategy = [[SubtractionStrategy alloc] init];
    result = [calculator performOperationWithNumber:5 andNumber:3];
    NSLog(@"减法结果：%ld", result);
    
    // 乘法运算
    calculator.strategy = [[MultiplicationStrategy alloc] init];
    result = [calculator performOperationWithNumber:5 andNumber:3];
    NSLog(@"乘法结果：%ld", result);
}

// MARK: Template Method Pattern

- (void)templateMethodPattern {
    AbstractClass *class1 = [[ConcreteClass1 alloc] init];
    [class1 templateMethod];
    // Output:
    // ConcreteClass1: 执行步骤 1
    // ConcreteClass1: 执行步骤 2
    
    AbstractClass *class2 = [[ConcreteClass2 alloc] init];
    [class2 templateMethod];
    // Output:
    // ConcreteClass2: 执行步骤 1
    // ConcreteClass2: 执行步骤 2
}

@end
