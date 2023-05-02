//
//  User.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/2.
//

#import "User.h"

@implementation User

- (instancetype)init {
    self = [super init];
    if (self) {
        _shoppingCart = [[ShoppingCart alloc] init];
    }
    return self;
}

- (void)addGoodsToCart:(Goods *)goods {
    Goods *good = [[Goods alloc] init];
    [self.shoppingCart addGoodsInfo:good];
}

- (void)checkOut {
    NSLog(@"用户 %@ 结账，购物清单如下：", self.name);
    [self.shoppingCart printShoppingList];
}

@end
