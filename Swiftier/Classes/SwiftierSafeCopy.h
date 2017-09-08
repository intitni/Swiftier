//
//  SwiftierSafeCopy.h
//  Pods
//
//  PSPDFKit is the leading cross-platform solution for integrating PDFs into your apps: https://pspdfkit.com.
//  Try it today using our free PDF Viewer app: https://pdfviewer.io/
//
//  This file is MIT licensed.

/**
 This file overrides the NSObject declaration of copy with specialized ones that retain the generic type.
 This is pure compiler sugar and will create additional warnings for type mismatches.
 
 @note id-casted objects will create a warning when copy is called on them as there are multiple
 declarations available. Either cast to specific type or to NSObject to work around this.
 */
@interface NSArray <ElementType> (PSPDFSafeCopy)

/// Same as `copy` but retains the generic type.
- (NSArray <ElementType> *)copy;

/// Same as `mutableCopy` but retains the generic type.
- (NSMutableArray <ElementType> *)mutableCopy;

@end

@interface NSSet <ElementType> (PSPDFSafeCopy)

/// Same as `copy` but retains the generic type.
- (NSSet <ElementType> *)copy;

/// Same as `mutableCopy` but retains the generic type.
- (NSMutableSet <ElementType> *)mutableCopy;

@end

@interface NSDictionary <KeyType, ValueType> (PSPDFSafeCopy)

/// Same as `copy` but retains the generic type.
- (NSDictionary <KeyType, ValueType> *)copy;

/// Same as `mutableCopy` but retains the generic type.
- (NSMutableDictionary <KeyType, ValueType> *)mutableCopy;

@end

@interface NSOrderedSet <ElementType> (PSPDFSafeCopy)

/// Same as `copy` but retains the generic type.
- (NSOrderedSet <ElementType> *)copy;

/// Same as `mutableCopy` but retains the generic type.
- (NSMutableOrderedSet <ElementType> *)mutableCopy;

@end

@interface NSHashTable <ElementType> (PSPDFSafeCopy)

/// Same as `copy` but retains the generic type.
- (NSHashTable <ElementType> *)copy;

@end

@interface NSMapTable <KeyType, ValueType> (PSPDFSafeCopy)

/// Same as `copy` but retains the generic type.
- (NSMapTable <KeyType, ValueType> *)copy;

@end
