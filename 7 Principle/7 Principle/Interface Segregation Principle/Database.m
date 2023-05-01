//
//  Database.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import "Database.h"

@implementation Database

#pragma mark - Method

- (void)connect {
    NSLog(@"Connect to database");
}

- (void)disConnect {
    NSLog(@"Disconnect from database");
}

#pragma mark - DatabaseProtocol

- (void)executeSQL:(NSString *)sql {
    NSLog(@"Execute SQL: %@", sql);
}

@end
