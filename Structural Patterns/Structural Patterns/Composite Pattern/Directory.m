//
//  Directory.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import "Directory.h"

@implementation Directory

- (instancetype)initWithName:(NSString *)name {
    self = [super initWithName:name];
    if (self) {
        _children = [NSMutableArray array];
    }
    return self;
}

- (void)addComponent:(FileSystemComponent *)component {
    [self.children addObject:component];
}

- (void)removeComponent:(FileSystemComponent *)component {
    [self.children removeObject:component];
}

- (NSArray<FileSystemComponent *> *)getChildren {
    return [self.children copy];
}

@end
