//
//  Product.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "Product.h"

@implementation Product

- (id)copyWithZone:(NSZone *)zone {
    Product *productCopy = [[[self class] allocWithZone:zone] init];
    productCopy.name = self.name;
    productCopy.price = self.price;
    return productCopy;
}


@end

