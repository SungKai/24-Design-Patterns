//
//  DependencyAdapter.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/14.
//

// 适配器类，通过依赖旧接口类来实现适配

#import <Foundation/Foundation.h>
#import "OldAPI.h"
#import "NewAPI.h"

NS_ASSUME_NONNULL_BEGIN

@interface DependencyAdapter : NSObject <NewAPI>

@property (nonatomic, strong) OldAPI *oldAPI;

@end

NS_ASSUME_NONNULL_END
