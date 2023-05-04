//
//  AnimalFactory.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/4.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Cat.h"

NS_ASSUME_NONNULL_BEGIN

@interface AnimalFactory : NSObject

+ (Animal *)creatAnimalWithType:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
