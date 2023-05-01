//
//  UserService.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import <Foundation/Foundation.h>
#import "DatabaseProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserService : NSObject

@property (nonatomic, strong) id<DatabaseProtocol> database;

- (instancetype)initWithDatabase:(id<DatabaseProtocol>)database;

- (void)saveUser:(NSString *)name withEmail:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
