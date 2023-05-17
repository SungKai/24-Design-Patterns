//
//  ShapeFactoryProtocol.h
//  Creational Patterns
//
//  Created by 宋开开 on 2023/5/15.
//

#ifndef ShapeFactoryProtocol_h
#define ShapeFactoryProtocol_h

#import "ShapeProtocol.h"

@protocol ShapeFactoryProtocol <NSObject>

- (id<ShapeProtocol>)creatShape;

@end

#endif /* ShapeFactoryProtocol_h */
