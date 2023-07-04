//
//  Memento.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/4.
//

// 备忘录对象
#import "Colleague.h"

NS_ASSUME_NONNULL_BEGIN

@interface Memento : NSObject

@property (nonatomic, strong) NSString *state;

@end

NS_ASSUME_NONNULL_END
