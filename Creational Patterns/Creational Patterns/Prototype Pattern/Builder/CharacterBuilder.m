//
//  CharacterBuilder.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "CharacterBuilder.h"

@implementation CharacterBuilder

- (instancetype)init {
    self = [super init];
    if (self) {
        self.character = [[Character alloc] init];
    }
    return self;
}

- (void)buildName:(NSString *)name {
    self.character.name = name;
}

- (void)buildLevel:(NSInteger)level {
    self.character.level = level;
}

- (void)buildHealth:(CGFloat)health {
    self.character.health = health;
}

- (void)buildMana:(CGFloat)mana {
    self.character.mana = mana;
}

@end
