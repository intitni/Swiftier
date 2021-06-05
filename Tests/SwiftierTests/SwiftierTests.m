//
//  Test.m
//  
//
//  Created by Shangxin Guo on 2021/6/5.
//

#import <XCTest/XCTest.h>
@import Swiftier;

@interface Test : XCTestCase

@end

@implementation Test

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    keyPath(self, accessibilityActivationPoint);
    let numbers = (NSArray <NSNumber *>*)@[@1, @2];
    foreach(number, numbers) {
        let x = number.intValue;
        NSLog(@"%@", @(x));
    }
    let block = ^{};
    safeBlock(block);
    mainQueueBlock(block);
}

@end
