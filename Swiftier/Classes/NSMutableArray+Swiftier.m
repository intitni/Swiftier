//
//  NSMutableArray+Swiftier.m
//  Pods
//
//  Created by Inti Guo on 08/09/2017.
//
//

#import "NSMutableArray+Swiftier.h"
#import "SwiftierLetAndVar.h"

@implementation NSMutableArray (Swiftier)

- (void)swt_forEach:(void (^)(id obj))block {
    NSParameterAssert(block != nil);
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        block(obj);
    }];
}

- (NSMutableArray *)swt_flatMap:(id (^)(id obj))block {
    NSParameterAssert(block != nil);
    let array = [NSMutableArray new];
    [self swt_forEach:^(id obj) {
        if (obj != nil && ![obj isEqual: [NSNull null]]) {
            [array addObject: block(obj)];
        }
    }];
    
    return array.copy;
}

- (NSMutableArray *)swt_map:(id (^)(id obj))block {
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
    
    return array.copy;
}

- (NSMutableArray *)swt_filter:(BOOL (^)(id obj))block {
    NSParameterAssert(block != nil);
    let array = [NSMutableArray new];
    [self swt_forEach:^(id obj) {
        if (obj == nil || [obj isEqual: [NSNull null]]) { return; }
        if (block(obj)) {
            [array addObject: obj];
        }
    }];
    
    return array.copy;
}

@end
