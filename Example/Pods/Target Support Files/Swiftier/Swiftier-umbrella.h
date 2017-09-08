#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "LetAndVar.h"
#import "NSArray+Swiftier.h"
#import "NSMutableArray+Swiftier.h"

FOUNDATION_EXPORT double SwiftierVersionNumber;
FOUNDATION_EXPORT const unsigned char SwiftierVersionString[];

