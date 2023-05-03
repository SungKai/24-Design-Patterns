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
    [self.shoppingCart addGoodsInfo:goods];
}

- (void)checkOut {
    NSLog(@"用户 %@ 结账，购物清单如下：", self.name);
    [self.shoppingCart printShoppingList];
}

@end
