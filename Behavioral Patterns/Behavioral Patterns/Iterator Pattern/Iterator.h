//
//  Iterator.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#ifndef Iterator_h
#define Iterator_h

// 迭代器接口

@protocol Iterator <NSObject>

- (BOOL)hasNext;
- (id)next;

@end

#endif /* Iterator_h */
