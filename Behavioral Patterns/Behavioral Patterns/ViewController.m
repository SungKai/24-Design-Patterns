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

#import "Invoker.h"
#import "Receiver.h"
#import "ConcreteCommand.h"
#import "AsyncTaskCommand.h"
#import "AsyncTaskQueue.h"

#import "Context.h"
#import "NumberExpression.h"
#import "AdditionExpression.h"
#import "SubtractionExpression.h"

#import "ConcreteIterator.h"
#import "ConcreteAggregate.h"

#import "ConcreteMediator.h"
#import "Colleague1.h"
#import "Colleague2.h"

#import "Memento.h"
#import "Originator.h"
#import "Caretaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self base_chainOfResponsibilityPattern];
//    [self requestValidity_chainOfResponsibilityPattern];
//    [self strategyPattern];
//    [self templateMethodPattern];
//    [self base_commandPattern];
//    [self async_commandPattern];
//    [self interpreterPattern];
//    [self iteratorPattern];
//    [self mediatorPattern];
    [self mementoPattern];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    [self observerPattern];
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

// MARK: Command Pattern

- (void)base_commandPattern {
    // 创建接收者对象
    Receiver *receiver = [[Receiver alloc] init];
    
    // 创建具体命令对象并将接收者传递给它
    ConcreteCommand *command = [[ConcreteCommand alloc] initWithReceiver:receiver];
    
    // 创建发送者对象，并设置命令
    Invoker *invoker = [[Invoker alloc] init];
    [invoker setCommand:command];
    
    // 发送者触发命令执行
    [invoker executeCommand];
}

- (void)async_commandPattern {
    // 创建异步任务队列
    AsyncTaskQueue *taskQueue = [[AsyncTaskQueue alloc] init];
    // 创建异步任务命令对象并添加到队列
    AsyncTaskCommand *task1 = [[AsyncTaskCommand alloc] initWithTaskName:@"Task 1" priority:1];
    AsyncTaskCommand *task2 = [[AsyncTaskCommand alloc] initWithTaskName:@"Task 2" priority:3];
    AsyncTaskCommand *task3 = [[AsyncTaskCommand alloc] initWithTaskName:@"Task 3" priority:2];
    [taskQueue addTask:task1];
    [taskQueue addTask:task2];
    [taskQueue addTask:task3];
    
    // 执行异步任务队列中的任务
    [taskQueue executeTasks];
    
    // 暂停任务
    [taskQueue pauseTasks];

    // 继续执行任务
    [taskQueue resumeTasks];

    // 移除任务
    [taskQueue removeTask:task2];

    // 执行剩下的任务
    [taskQueue executeTasks];
}

// MARK: Interpreter Pattern

- (void)interpreterPattern {
    Context *context = [[Context alloc] init];
    context.variables = @{
        @"x" : @(10),
        @"y" : @(5)
    };
    
    AdditionExpression *expression = [[AdditionExpression alloc] init];
    expression.leftExpression = [[NumberExpression alloc] init];
    ((NumberExpression *)expression.leftExpression).number = [context valueForVariable:@"x"].integerValue;
    expression.rightExpression = [[SubtractionExpression alloc] init];
    ((SubtractionExpression *)expression.rightExpression).leftExpression = [[NumberExpression alloc] init];
    ((NumberExpression *)((SubtractionExpression *)expression.rightExpression).leftExpression).number = [context valueForVariable:@"y"].integerValue;
    ((SubtractionExpression *)expression.rightExpression).rightExpression = [[NumberExpression alloc] init];
    ((NumberExpression *)((SubtractionExpression *)expression.rightExpression).rightExpression).number = 2;

    NSInteger result = [expression interpretWithContext:context.variables];
    NSLog(@"Result: %ld", (long)result);
}

// MARK: Iterator Pattern

- (void)iteratorPattern{
    NSArray *array = @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"];

    // 创建具体集合对象
    ConcreteAggregate *aggregate = [[ConcreteAggregate alloc] initWithCollection:array];
    
    // 创建迭代器对象
    id<Iterator> iterator = [aggregate createIterator];
    
    // 使用迭代器遍历集合对象
    while ([iterator hasNext]) {
        id item = [iterator next];
        NSLog(@"%@", item);
    }
}

// MARK: Mediator Pattern

- (void)mediatorPattern {
    // 中介者
    ConcreteMediator *mediator = [[ConcreteMediator alloc] init];
    
    // 两个通信的同事
    Colleague1 *colleague1 = [[Colleague1 alloc] initWithMediator:mediator];
    Colleague2 *colleague2 = [[Colleague2 alloc] initWithMediator:mediator];
    
    mediator.colleague1 = colleague1;
    mediator.colleague2 = colleague2;
    
    // 通信
    [colleague1 send:@"Hello, colleague2!"];
    [colleague2 send:@"Hello, colleague1!"];
}

// MARK: Memento Pattern

- (void)mementoPattern {
    // 使用备忘录模式
    Originator *originator = [[Originator alloc] init];
    Caretaker *caretaker = [[Caretaker alloc] init];
    
    // 设置发起人的状态
    originator.state = @"state1";
    // 创建备忘录并保存状态
    Memento *memento1 = [originator createMemento];
    [caretaker addMemento:memento1];
    
    // 修改发起人的状态
    originator.state = @"state2";
    // 创建备忘录并保存状态
    Memento *memento2 = [originator createMemento];
    [caretaker addMemento:memento2];
    
    // 恢复到第一个备忘录保存的状态
    Memento *saveMemento = [caretaker getMementoAtIndex:0];
    [originator restoreFromMemento:saveMemento];
    
    NSLog(@"Current state: %@", originator.state);
}

@end
