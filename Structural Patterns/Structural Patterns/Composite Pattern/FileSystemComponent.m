//
//  FileSystemComponent.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import "FileSystemComponent.h"

@implementation FileSystemComponent

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)addComponent:(FileSystemComponent *)component {
    // 默认实现为空，只有组合节点需要实现该方法
}

- (void)removeComponent:(FileSystemComponent *)component {
    // 默认实现为空，只有组合节点需要实现该方法
}

- (NSArray<FileSystemComponent *> *)getChildren {
    // 默认实现为空，只有组合节点需要实现该方法
    return nil;
}

@end
