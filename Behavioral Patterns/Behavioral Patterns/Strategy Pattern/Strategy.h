//
//  Strategy.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/3.
//

#ifndef Strategy_h
#define Strategy_h
#import <Foundation/Foundation.h>

@protocol Strategy <NSObject>

- (NSInteger)executeOperationWithNumber:(NSInteger)number1 andNumber:(NSInteger)number2;

@end


#endif /* Strategy_h */
