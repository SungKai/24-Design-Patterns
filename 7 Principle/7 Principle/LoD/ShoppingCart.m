//
//  ShoppingCart.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/2.
//

#import "ShoppingCart.h"

@implementation ShoppingCart

- (instancetype)init {
    self = [super init];
    if (self) {
        _goodsArray = [NSMutableArray array];
    }
    return self;
}

- (void)addGoodsInfo:(Goods *)goods {
    [self.goodsArray addObject:goods];
    NSLog(@"添加商品 %@ 到购物车", goods.name);
}

- (void)printShoppingList {
    NSLog(@"========== 购物车清单 ==========");
    for (Goods *info in self.goodsArray) {
        NSLog(@"%@ , %f", info.name, info.price);
    }
    NSLog(@"================================");
}
@end
