//
//  Caretaker.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 管理者对象

#import <Foundation/Foundation.h>
#import "Memento.h"

NS_ASSUME_NONNULL_BEGIN

@interface Caretaker : NSObject

/// 备忘录仓库
@property (nonatomic, strong) NSMutableArray <Memento *> *mementos;

- (void)addMemento:(Memento *)memento;

- (Memento *)getMementoAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
