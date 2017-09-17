//
//  NSArray+Swiftier.m
//  
//
//  Created by Inti Guo on 08/09/2017.
//
//

#import "NSArray+Swiftier.h"
#import "SwiftierLetAndVar.h"

@implementation NSArray (Swiftier)

- (void)swt_forEach:(void (^)(id obj))block {
    NSParameterAssert(block != nil);
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        block(obj);
    }];
}

- (NSArray *)swt_flatMap:(id (^)(id obj))block {
    NSParameterAssert(block != nil);
    let array = [NSMutableArray new];
    [self swt_forEach:^(id obj) {
        if (obj != nil && ![obj isEqual: [NSNull null]]) {
            [array addObject: block(obj)];
        }
    }];
    
    return array;
}

- (NSArray *)swt_map:(id (^)(id obj))block {
    NSParameterAssert(block != nil);
    let array = [NSMutableArray new];
    [self swt_forEach:^(id obj) {
        if (obj == nil || [obj isEqual: [NSNull null]]) {
            [array addObject: [NSNull null]];
            return;
        }
        id value = block(obj) ?: [NSNull null];
        [array addObject: value];
    }];
    
    return array;
}

- (NSArray *)swt_filter:(BOOL (^)(id obj))block {
    NSParameterAssert(block != nil);
    let array = [NSMutableArray new];
    [self swt_forEach:^(id obj) {
        if (obj == nil || [obj isEqual: [NSNull null]]) { return; }
        if (block(obj)) {
            [array addObject: obj];
        }
    }];

    return array;
}



@end
