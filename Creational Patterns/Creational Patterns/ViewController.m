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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self factoryMethodPattern];
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

@end
