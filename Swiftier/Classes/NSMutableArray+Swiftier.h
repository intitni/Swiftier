//
//  NSMutableArray+Swiftier.h
//  Pods
//
//  Created by Inti Guo on 08/09/2017.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSMutableArray <ElementType> (Swiftier)

- (void)swt_forEach:(__attribute__((noescape)) void (^)(ElementType obj))block;
- (NSMutableArray *)swt_flatMap:(__attribute__((noescape)) id (^)(ElementType obj))block;
- (NSMutableArray *)swt_map:(__attribute__((noescape)) id (^)(ElementType obj))block;
- (NSMutableArray<ElementType> *)swt_filter:(__attribute__((noescape)) BOOL (^)(ElementType obj))block;

@end
NS_ASSUME_NONNULL_END
