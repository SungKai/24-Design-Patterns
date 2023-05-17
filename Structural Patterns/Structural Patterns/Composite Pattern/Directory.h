//
//  Directory.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

// 文件夹

#import "FileSystemComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface Directory : FileSystemComponent

@property (nonatomic, strong) NSMutableArray<FileSystemComponent *> *children;

@end

NS_ASSUME_NONNULL_END
