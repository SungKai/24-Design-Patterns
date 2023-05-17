//
//  ViewStyleViewController.h
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/17.
//

#import <UIKit/UIKit.h>
#import "ViewStyleProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewStyleViewController : UIViewController

@property (nonatomic, strong) id<ViewStyleProtocol> viewStyle;

@end

NS_ASSUME_NONNULL_END
