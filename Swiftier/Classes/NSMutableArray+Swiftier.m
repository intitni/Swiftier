#import "NSMutableArray+Swiftier.h"
#import "SwiftierLetAndVar.h"

@implementation NSMutableArray (Swiftier)

- (void)swt_forEach:(__attribute__((noescape)) void (^)(id obj))block {
    NSParameterAssert(block != nil);
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        block(obj);
    }];
}

- (NSMutableArray *)swt_flatMap:(__attribute__((noescape)) id (^)(id obj))block {
    NSParameterAssert(block != nil);
    let array = [NSMutableArray new];
    [self swt_forEach:^(id obj) {
        if (obj != nil && ![obj isEqual: [NSNull null]]) {
            [array addObject: block(obj)];
        }
    }];
    
    return array.copy;
}

- (NSMutableArray *)swt_map:(__attribute__((noescape)) id (^)(id obj))block {
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

- (NSMutableArray *)swt_filter:(__attribute__((noescape)) BOOL (^)(id obj))block {
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

- (nullable id)swt_firstWhere:(__attribute__((noescape)) BOOL (^)(id obj))block {
    if (block == nil) { return self.firstObject; }
    for (id obj in self) {
        if (block(obj)) { return obj; }
    }
    return nil;
}

@end
