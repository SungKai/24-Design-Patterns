//
//  AbstractClass.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/3.
//

// 基类
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractClass : NSObject

- (void)templateMethod; // 模板方法

// 需要子类实现的抽象方法
- (void)primitiveOperation1;
- (void)primitiveOperation2;

@end

NS_ASSUME_NONNULL_END
