//
//  AutoDriveDecorator.m
//  7 Principle
//
//  Created by 宋开开 on 2023/5/1.
//

#import "AutoDriveDecorator.h"

@implementation AutoDriveDecorator

- (void)startAutoDriving {
    NSLog(@"Auto Driving");
}

- (void)startEngine {
    [super startEngine];
    [self startAutoDriving];
}

@end
