//
//  DownloaderProxy.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/18.
//

#import <Foundation/Foundation.h>
#import "RealDownloader.h"

NS_ASSUME_NONNULL_BEGIN

@interface DownloaderProxy : NSObject <Downloader>

@property (nonatomic, strong) RealDownloader *realDownloader;

@end

NS_ASSUME_NONNULL_END
