//
//  DownloaderProxy.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/18.
//

#import "DownloaderProxy.h"

@implementation DownloaderProxy

- (void)downloadFile:(NSString *)url {
    NSLog(@"DownloaderProxy: Preparing to download file from %@", url);
    if (self.realDownloader == nil) {
        self.realDownloader = [[RealDownloader alloc] init];
    }
    [self.realDownloader downloadFile:url];
    NSLog(@"DownloaderProxy: File download complete");
}

@end
