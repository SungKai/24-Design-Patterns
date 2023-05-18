//
//  ImageCache.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/18.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageCache : NSObject

@property (nonatomic, strong) NSCache *cache;

+ (instancetype)sharedCache;
- (UIImage *)getImageWithName:(NSString *)imageName;
- (void)setImage:(UIImage *)image withName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
