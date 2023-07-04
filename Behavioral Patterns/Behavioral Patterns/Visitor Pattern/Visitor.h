//
//  Visitor.h
//  Behavioral Patterns
//
//  Created by 宋开开 on 2023/7/5.
//

#ifndef Visitor_h
#define Visitor_h

@class ConcreteElementA;
@class ConcreteElementB;

@protocol Visitor <NSObject>

- (void)visitElementA:(ConcreteElementA *)elementA;
- (void)visitElementB:(ConcreteElementB *)elementB;

@end


#endif /* Visitor_h */
