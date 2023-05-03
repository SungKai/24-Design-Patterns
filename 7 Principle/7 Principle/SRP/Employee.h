//
//  Employee.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSString *department;

@end

NS_ASSUME_NONNULL_END
