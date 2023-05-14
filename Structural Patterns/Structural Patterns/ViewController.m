//
//  ViewController.m
//  Structural Patterns
//
//  Created by 宋开开 on 2023/5/14.
//

#import "ViewController.h"

#import "GeneralizationAdapter.h"
#import "DependencyAdapter.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self adapterPattern_Generalization];
    [self adapterPattern_Dependency];
}

// MARK: Adapter Pattern

- (void)adapterPattern_Generalization {
    id <NewAPI> api = [[GeneralizationAdapter alloc] init];
    [api newRequest];
}

- (void)adapterPattern_Dependency {
    DependencyAdapter *adapter = [[DependencyAdapter alloc] init];
    adapter.oldAPI = [[OldAPI alloc] init];
    [adapter newRequest];
}

@end
