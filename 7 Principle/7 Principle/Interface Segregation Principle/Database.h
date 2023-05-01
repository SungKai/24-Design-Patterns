//
//  Database.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import <Foundation/Foundation.h>
#import "DatabaseProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Database : NSObject <DatabaseProtocol>

- (void)connect;

- (void)disConnect;

@end

NS_ASSUME_NONNULL_END
