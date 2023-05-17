//
//  ViewController.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/14.
//

#import "ViewController.h"

#import "GeneralizationAdapter.h"
#import "DependencyAdapter.h"

#import "ConcreteImplementorA.h"
#import "ConcreteImplementorB.h"
#import "Abstraction.h"
#import "HTTPRequest.h"
#import "WebSocketRequest.h"
#import "NetworkClient.h"
#import "LightThemeStyle.h"
#import "DarkThemeStyle.h"
#import "ViewStyleViewController.h"

#import "File.h"
#import "Directory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self adapterPattern_Generalization];
//    [self adapterPattern_Dependency];
//    [self bridgePattern_Simple];
    [self compositePattern];
}

// MARK: Adapter Pattern

- (void)adapterPattern_Generalization {
    id <NewAPI> api = [[GeneralizationAdapter alloc] init];
    [api newRequest];
}

- (void)adapterPattern_Dependency {
    DependencyAdapter *adapter = [[DependencyAdapter alloc] init];
    adapter.oldAPI = [[OldAPI alloc] init];
    [adapter newRequest];
}

// MARK: Bridge Pattern

- (void)bridgePattern_Simple {
    // 创建具体的实现对象A
    ConcreteImplementorA *implementorA = [[ConcreteImplementorA alloc] init];
    // 创建抽象部分对象，并将具体的实现对象A桥接进去
    Abstraction *abstraction = [[Abstraction alloc] init];
    abstraction.implementor = implementorA;
    // 调用抽象部分的操作
    [abstraction doAction];
    
    // 创建具体的实现对象B
    ConcreteImplementorB *implementorB = [[ConcreteImplementorB alloc] init];
    // 将具体的实现对象B桥接进抽象部分对象
    abstraction.implementor = implementorB;
    // 调用抽象部分的操作
    [abstraction doAction];
}

- (void)bridgePattern_Network {
    NSURL *url = [NSURL URLWithString:@"https://example.com"];
    NetworkClient *client = [[NetworkClient alloc] init];
    // 使用HTTP协议发送请求
    client.request = [[HTTPRequest alloc] init];
    [client makeRequestWithURL:url];
    
    // 使用WebSocket协议发送请求
    client.request = [[WebSocketRequest alloc] init];
    [client makeRequestWithURL:url];
}

- (void)bridgePattern_ViewStyle {
    ViewStyleViewController *viewController = [[ViewStyleViewController alloc] init];
        
    // 创建并配置不同的视图样式
    viewController.viewStyle = [[DarkThemeStyle alloc] init];
        
    // 设置视图背景颜色
    viewController.view.backgroundColor = [viewController.viewStyle backgroundColor];
    
    // 创建并配置视图控件，使用视图样式的文本颜色
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    label.textColor = [viewController.viewStyle textColor];
    label.text = @"Hello, Bridge Pattern!";
    [viewController.view addSubview:label];
}

// MARK: Composite Pattern

- (void)compositePattern {
    Directory *root = [[Directory alloc] initWithName:@"root"];
    Directory *documents = [[Directory alloc] initWithName:@"Documents"];
    File *readme = [[File alloc] initWithName:@"readme.txt"];
    [documents addComponent:readme];
    [root addComponent:documents];
    
    Directory *pictures = [[Directory alloc] initWithName:@"Pictures"];
    File *photo1 = [[File alloc] initWithName:@"photo1.jpg"];
    File *photo2 = [[File alloc] initWithName:@"photo2.jpg"];
    [pictures addComponent:photo1];
    [pictures addComponent:photo2];
    [root addComponent:pictures];

    [root addComponent:[[File alloc] initWithName:@"notes.txt"]];
    
    // 调用 printFileSystem 方法来打印文件系统
    [self printFileSystem:root];
}

- (void)printFileSystem:(FileSystemComponent *)component  {
    NSLog(@"%@", component.name);
    if ([component isKindOfClass:[Directory class]]) {
        Directory *directory = (Directory *)component;
        NSArray<FileSystemComponent *> *children = [directory getChildren];
        for (FileSystemComponent *child in children) {
            [self printFileSystem:child];
        }
    }
}


@end
