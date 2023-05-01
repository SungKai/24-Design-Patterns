//
//  UserService.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import "UserService.h"

@implementation UserService

- (instancetype)initWithDatabase:(id<DatabaseProtocol>)database {
    self = [super init];
    if (self) {
        _database = database;
    }
    return self;
}

- (void)saveUser:(NSString *)name withEmail:(NSString *)email {
    [self.database executeSQL:[NSString stringWithFormat:@"INSERT INTO users(name, email) VALUES('%@', '%@')", name, email]];
}

@end
