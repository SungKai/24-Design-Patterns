//
//  Goods.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 商品类

@interface Goods : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) CGFloat price;

@end

NS_ASSUME_NONNULL_END
