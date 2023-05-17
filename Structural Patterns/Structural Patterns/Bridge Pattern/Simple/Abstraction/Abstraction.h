//
//  Abstraction.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import <Foundation/Foundation.h>
#import "Implementor.h"

NS_ASSUME_NONNULL_BEGIN

@interface Abstraction : NSObject

@property (nonatomic, strong) id<Implementor> implementor;

- (void)doAction;

@end

NS_ASSUME_NONNULL_END
