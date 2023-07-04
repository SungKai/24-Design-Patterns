//
//  Expression.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

#ifndef Expression_h
#define Expression_h
#import <Foundation/Foundation.h>

@protocol Expression <NSObject>

- (NSInteger)interpretWithContext:(NSDictionary<NSString *, NSNumber *> *)context;


@end

#endif /* Expression_h */
