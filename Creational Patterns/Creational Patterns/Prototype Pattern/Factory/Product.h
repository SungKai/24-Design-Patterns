//
//  Product.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Product : NSObject <NSCopying>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) CGFloat price;

@end

NS_ASSUME_NONNULL_END
