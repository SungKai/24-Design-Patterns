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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self base_chainOfResponsibilityPattern];
//    [self requestValidity_chainOfResponsibilityPattern];
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

@end
