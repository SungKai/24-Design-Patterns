//
//  Adapter.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/14.
//

// 适配器子类，继承自旧接口类并实现目标接口

#import "OldAPI.h"
#import "NewAPI.h"

NS_ASSUME_NONNULL_BEGIN

@interface GeneralizationAdapter : OldAPI <NewAPI>


@end

NS_ASSUME_NONNULL_END
