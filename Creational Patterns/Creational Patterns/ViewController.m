//
//  ViewController.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/4.
//

#import "ViewController.h"

#import "AnimalFactory.h"

#import "iOSFactory.h"
#import "AndroidFactory.h"

#import "NetworkSingleton.h"

#import "ResumeBuilderProtocol.h"
#import "ResumeBuilder.h"
#import "ResumeDirector.h"

#import "MyView.h"
#import "Product.h"
#import "ProductFactory.h"
#import "CharacterBuilder.h"
#import "NetworkRequestCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self factoryMethodPattern];
//    [self prototypePattern_Builder];
}

// MARK: Factory Method Pattern

- (void)factoryMethodPattern {
    Animal *dog = [AnimalFactory creatAnimalWithType:@"dog"];
    [dog speak];
    Animal *cat = [AnimalFactory creatAnimalWithType:@"cat"];
    [cat speak];
}


// MARK: Abstract Factory Pattern

- (void)abstractFactoryPattern {
    id <AbstractFactoryProtocol> factory = [[iOSFactory alloc] init];
    // 使用iOS风格的按钮和标签
    [factory creatButton];
    [factory creatLabel];
    // 使用Android风格的按钮和标签
    [factory creatButton];
    [factory creatLabel];
}

// MARK: Singleton Pattern

- (void)singletonPattern {
    NetworkSingleton *networkSingleton = [NetworkSingleton shareManager];
}

// MARK: Builder Pattern

- (void)builderPattern {
    id <ResumeBuilderProtocol> builder = [[ResumeBuilder alloc] init];
    ResumeDirector *director = [[ResumeDirector alloc] initWithBuilder:builder];
    NSString *str = [director construct];
    NSLog(@"builderPattern:%@", str);
}

// MARK: Prototype Pattern

- (void)prototypePattern_View {
    // 创建原型对象
    MyView *prototypeView = [[MyView alloc] init];
    prototypeView.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    prototypeView.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 60, 100, 50)];
    // 复制原型对象，创建新的对象
    MyView *newView = [prototypeView copy];
    newView.titleLabel.text = @"Hello word";
    [newView.button setTitle:@"Click" forState:UIControlStateNormal];
}

- (void)prototypePattern_Factory {
    Product *prototype = [[Product alloc] init];
    prototype.name = @"iPhone";
    prototype.price = 1000.0;

    ProductFactory *factory = [[ProductFactory alloc] init];
    factory.productPrototype = prototype;

    Product *product1 = [factory createProduct];  // 创建新的产品实例1
    product1.price = 1200.0;

    Product *product2 = [factory createProduct];  // 创建新的产品实例2
    product2.name = @"iPad";

    NSLog(@"Prototype: %@", prototype);
    NSLog(@"Product 1: %@", product1);
    NSLog(@"Product 2: %@", product2);
}

- (void)prototypePattern_Builder {
    CharacterBuilder <CharacterProtocol> *characterBuilder = [[CharacterBuilder alloc] init];
    [characterBuilder buildName:@"Jane"];
    [characterBuilder buildLevel:10];
    [characterBuilder buildHealth:100.0];
    [characterBuilder buildMana:50.0];
    
    Character *prototype = characterBuilder.character;
    Character *characterCopy1 = [prototype copy];
    characterCopy1.name = @"Pike";
    
    Character *characterCopy2 = [prototype copy];
    characterCopy2.health = 120.0;
    NSLog(@"Prototype: %@", prototype);
    NSLog(@"characterCopy1: %@", characterCopy1);
    NSLog(@"characterCopy2: %@", characterCopy2);
}

- (void)prototypePattern_Network {
    NetworkRequest *prototypeRequest = [[NetworkRequest alloc] init];
    NSString *urlString = @"https://api.example.com/data";
    NSDictionary *parameters = @{@"param1": @"value1", @"param2": @"value2"};
    prototypeRequest.urlString = urlString;
    prototypeRequest.parameters = parameters;
    // 复制
    NetworkRequest *newRequest = [prototypeRequest copy];
    newRequest.parameters = @{@"param3": @"value3"};
    [newRequest sendRequestWithSuccess:^(id  _Nonnull responseObject) {
        NSLog(@"Request succeeded with response: %@", responseObject);
    } failure:^(NSError * _Nonnull error) {
        NSLog(@"Request failed with error: %@", error);
    }];
    // 将请求对象缓存起来
    [[NetworkRequestCache sharedCache] cacheRequest:newRequest];
    // 获取缓存请求数据
    NetworkRequest *networkRequest = [[NetworkRequestCache sharedCache] getCacheRequestForUrlString:urlString parameters:parameters];
}


@end
