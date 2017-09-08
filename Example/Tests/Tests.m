//
//  SwiftierTests.m
//  SwiftierTests
//
//  Created by int123c on 09/08/2017.
//  Copyright (c) 2017 int123c. All rights reserved.
//

@import XCTest;
@import Swiftier;

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNSArrayMap
{
    let array = @[@1,@2,@3];
    NSArray<NSNumber *> *new = [array swt_map:^NSNumber*(NSNumber* obj){
        return @(obj.intValue + 1);
    }];
    
    XCTAssertEqual(new[0].intValue, 2);
    XCTAssertEqual(new[1].intValue, 3);
    XCTAssertEqual(new[2].intValue, 4);
}

- (void)testNSArrayFlatMap
{
    let array = @[@1,[NSNull null],@3];
    NSArray<NSNumber *> *new = [array swt_flatMap:^NSNumber*(NSNumber* obj){
        return @(obj.intValue + 1);
    }];
    
    XCTAssertEqual(new[0].intValue, 2);
    XCTAssertEqual(new[1].intValue, 4);
}

- (void)testNSArrayFilter {
    let array = @[@1,@2,@3];
    NSArray<NSNumber *> *new = [array swt_filter:^BOOL (NSNumber* obj){
        return obj.intValue > 1;
    }];
    
    XCTAssertEqual(new[0].intValue, 2);
    XCTAssertEqual(new[1].intValue, 3);
}

- (void)testNSMutableArrayMap
{
    let array = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, nil];
    NSArray<NSNumber *> *new = [array swt_map:^NSNumber*(NSNumber* obj){
        return @(obj.intValue + 1);
    }];
    
    XCTAssertEqual(new[0].intValue, 2);
    XCTAssertEqual(new[1].intValue, 3);
    XCTAssertEqual(new[2].intValue, 4);
}

- (void)testNSMutableArrayFlatMap
{
    let array = [[NSMutableArray alloc] initWithObjects:@1, [NSNull null], @3, nil];
    NSArray<NSNumber *> *new = [array swt_flatMap:^NSNumber*(NSNumber* obj){
        return @(obj.intValue + 1);
    }];
    
    XCTAssertEqual(new[0].intValue, 2);
    XCTAssertEqual(new[1].intValue, 4);
}

- (void)testNSMutableArrayFilter {
    let array = @[@1,@2,@3];
    NSArray<NSNumber *> *new = [array swt_filter:^BOOL (NSNumber* obj){
        return obj.intValue > 1;
    }];
    
    XCTAssertEqual(new[0].intValue, 2);
    XCTAssertEqual(new[1].intValue, 3);
}

@end

