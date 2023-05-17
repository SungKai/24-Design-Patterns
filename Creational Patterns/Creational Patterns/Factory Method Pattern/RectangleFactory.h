//
//  RectangleFactory.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/15.
//

#import <Foundation/Foundation.h>
#import "ShapeFactoryProtocol.h"
#import "Rectangle.h"

NS_ASSUME_NONNULL_BEGIN

@interface RectangleFactory : NSObject <ShapeFactoryProtocol>

@end

NS_ASSUME_NONNULL_END
