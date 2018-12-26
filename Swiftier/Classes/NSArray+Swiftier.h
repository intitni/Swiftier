#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSArray <ElementType> (Swiftier)

- (void)swt_forEach:(__attribute__((noescape)) void (^)(ElementType obj))block;
- (NSArray *)swt_flatMap:(__attribute__((noescape)) id (^)(ElementType obj))block;
- (NSArray *)swt_map:(__attribute__((noescape)) id (^)(ElementType obj))block;
- (NSArray<ElementType> *)swt_filter:(__attribute__((noescape)) BOOL (^)(ElementType obj))block;
- (nullable ElementType)swt_firstWhere:(__attribute__((noescape)) BOOL (^)(ElementType obj))block;

@end
NS_ASSUME_NONNULL_END
