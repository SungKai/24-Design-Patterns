//
//  CharacterProtocol.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#ifndef CharacterProtocol_h
#define CharacterProtocol_h

@protocol CharacterProtocol <NSObject>

- (void)buildName:(NSString *)name;
- (void)buildLevel:(NSInteger)level;
- (void)buildHealth:(CGFloat)health;
- (void)buildMana:(CGFloat)mana;

@end

#endif /* CharacterProtocol_h */
