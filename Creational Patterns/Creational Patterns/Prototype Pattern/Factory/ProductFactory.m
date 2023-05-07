//
//  ProductFactory.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "ProductFactory.h"

@implementation ProductFactory

- (Product *)createProduct {
    return [self.productPrototype copy];
}

@end
