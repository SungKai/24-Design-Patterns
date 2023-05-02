//
//  ShoppingCart.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/2.
//

#import <Foundation/Foundation.h>
#import "Goods.h"

NS_ASSUME_NONNULL_BEGIN

@interface ShoppingCart : NSObject

@property (nonatomic, strong) NSMutableArray<Goods *> *goodsArray;

- (void)addGoodsInfo:(Goods *)goods;

- (void)printShoppingList;

@end

NS_ASSUME_NONNULL_END
