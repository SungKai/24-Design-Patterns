//
//  Downloader.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/18.
//

#ifndef Downloader_h
#define Downloader_h

@protocol Downloader <NSObject>

- (void)downloadFile:(NSString *)url;

@end

#endif /* Downloader_h */
