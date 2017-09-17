//
//  SWTViewController.m
//  Swiftier
//
//  Created by int123c on 09/08/2017.
//  Copyright (c) 2017 int123c. All rights reserved.
//

#import "SWTViewController.h"
@import Swiftier;

@interface SWTViewController ()

@end

@implementation SWTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	keyPath(self, view);
    let numbers = (NSArray <NSNumber *>*)@[@1, @2];
    foreach(number, numbers) {
        let x = number.intValue;
        NSLog(@"%@", @(x));
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
