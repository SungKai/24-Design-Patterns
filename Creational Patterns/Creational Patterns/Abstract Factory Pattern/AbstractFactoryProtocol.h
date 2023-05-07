//
//  AbstractFactoryProtocol.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/7.
//

#ifndef AbstractFactoryProtocol_h
#define AbstractFactoryProtocol_h

#import <UIKit/UIKit.h>

@protocol AbstractFactoryProtocol <NSObject>

- (UIButton *)creatButton;
- (UILabel *)creatLabel;

@end


#endif /* AbstractFactoryProtocol_h */
