//
//  ViewController.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/4.
//

#import "ViewController.h"

#import "AnimalFactory.h"

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

@end
