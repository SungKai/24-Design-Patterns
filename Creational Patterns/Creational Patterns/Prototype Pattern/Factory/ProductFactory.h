//
//  ProductFactory.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import <Foundation/Foundation.h>
#import "Product.h"

NS_ASSUME_NONNULL_BEGIN

@interface ProductFactory : NSObject

@property (nonatomic, strong) Product *productPrototype;

- (Product *)createProduct;

@end

NS_ASSUME_NONNULL_END
