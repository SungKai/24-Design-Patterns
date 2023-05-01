//
//  DatabaseProtocol.h
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#ifndef DatabaseProtocol_h
#define DatabaseProtocol_h

@protocol DatabaseProtocol <NSObject>

- (void)executeSQL:(NSString *)sql;

@end


#endif /* DatabaseProtocol_h */
