//
//  Character.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Character : NSObject <NSCopying>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger level;
@property (nonatomic, assign) CGFloat health;
@property (nonatomic, assign) CGFloat mana;

@end

NS_ASSUME_NONNULL_END
