//
//  Character.m
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#import "Character.h"

@implementation Character

- (id)copyWithZone:(NSZone *)zone {
    Character *characterCopy = [[[self class] allocWithZone:zone] init];
    characterCopy.name = self.name;
    characterCopy.level = self.level;
    characterCopy.health = self.health;
    characterCopy.mana = self.mana;
    return characterCopy;
}

@end
