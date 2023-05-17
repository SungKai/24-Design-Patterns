//
//  FileSystemComponent.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FileSystemComponent : NSObject

@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;
- (void)addComponent:(FileSystemComponent *)component;
- (void)removeComponent:(FileSystemComponent *)component;
- (NSArray<FileSystemComponent *> *)getChildren;

@end

NS_ASSUME_NONNULL_END
