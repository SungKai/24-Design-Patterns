//
//  NetworkRequestProtocol.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#ifndef NetworkRequestProtocol_h
#define NetworkRequestProtocol_h

// 抽象的网络请求接口
@protocol NetworkRequestProtocol <NSObject>

- (void)sendRequestWithURL:(NSURL *)url;

@end

#endif /* NetworkRequestProtocol_h */
