//
//  CharacterBuilder.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import <Foundation/Foundation.h>
#import "CharacterProtocol.h"
#import "Character.h"

NS_ASSUME_NONNULL_BEGIN

@interface CharacterBuilder : NSObject <CharacterProtocol>

@property (nonatomic, strong) Character *character;

@end

NS_ASSUME_NONNULL_END
