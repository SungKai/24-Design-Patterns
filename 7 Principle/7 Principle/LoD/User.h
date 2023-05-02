//
//  User.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/2.
//

#import <Foundation/Foundation.h>
#import "ShoppingCart.h"

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) ShoppingCart *shoppingCart;

- (void)addGoodsToCart:(Goods *)goods;

- (void)checkOut;

@end

NS_ASSUME_NONNULL_END
