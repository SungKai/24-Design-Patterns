//
//  Originator.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 发起人对象

#import <Foundation/Foundation.h>
#import "Memento.h"

NS_ASSUME_NONNULL_BEGIN

@interface Originator : NSObject

@property (nonatomic, strong) NSString *state;

- (Memento *)createMemento;
- (void)restoreFromMemento:(Memento *)memento;

@end

NS_ASSUME_NONNULL_END
