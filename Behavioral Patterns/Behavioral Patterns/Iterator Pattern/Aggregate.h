//
//  Aggregate.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#ifndef Aggregate_h
#define Aggregate_h

#import "Iterator.h"

// 集合接口
@protocol Aggregate <NSObject>

- (id<Iterator>)createIterator;

@end

#endif /* Aggregate_h */
