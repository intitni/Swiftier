// https://pspdfkit.com/blog/2017/even-swiftier-objective-c/

@protocol SwiftierFastEnumeration <NSFastEnumeration>
- (id)swt_enumeratedType;
@end

// Usage: foreach (s, strings) { ... }
#define foreach(element, collection) for (typeof((collection).swt_enumeratedType) element in (collection))

@interface NSArray <ElementType> (SwiftierFastEnumeration)
<SwiftierFastEnumeration>

- (ElementType)swt_enumeratedType;

@end

@interface NSSet <ElementType> (SwiftierFastEnumeration)
<SwiftierFastEnumeration>

- (ElementType)swt_enumeratedType;

@end

@interface NSDictionary <KeyType, ValueType> (SwiftierFastEnumeration)
<SwiftierFastEnumeration>

- (KeyType)swt_enumeratedType;

@end

@interface NSOrderedSet <ElementType> (SwiftierFastEnumeration)
<SwiftierFastEnumeration>

- (ElementType)swt_enumeratedType;

@end

@interface NSPointerArray (SwiftierFastEnumeration) <SwiftierFastEnumeration>

- (void *)swt_enumeratedType;

@end

@interface NSHashTable <ElementType> (SwiftierFastEnumeration)
<SwiftierFastEnumeration>

- (ElementType)swt_enumeratedType;

@end

@interface NSMapTable <KeyType, ValueType> (SwiftierFastEnumeration)
<SwiftierFastEnumeration>

- (KeyType)swt_enumeratedType;

@end

@interface NSEnumerator <ElementType> (SwiftierFastEnumeration)
<SwiftierFastEnumeration>

- (ElementType)swt_enumeratedType;

@end
