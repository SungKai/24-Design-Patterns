//
//  Element.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#ifndef Element_h
#define Element_h

// 元素接口

@protocol Element <NSObject>

- (void)acceptVisitor:(id)visitor;

@end


#endif /* Element_h */
