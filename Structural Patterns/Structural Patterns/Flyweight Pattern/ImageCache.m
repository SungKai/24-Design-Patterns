//
//  ImageCache.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/18.
//

#import "ImageCache.h"

@implementation ImageCache

+ (instancetype)sharedCache {
    static ImageCache *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[ImageCache alloc] init];
        shareInstance.cache = [[NSCache alloc] init];
    });
    return shareInstance;
}

- (UIImage *)getImageWithName:(NSString *)imageName {
    return [self.cache objectForKey:imageName];
}

- (void)setImage:(UIImage *)image withName:(NSString *)imageName {
    [self.cache setObject:image forKey:imageName];
}

@end
