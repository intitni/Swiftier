#ifndef SwiftierKeyPath_h
#define SwiftierKeyPath_h

#define keyPath(object, property) (^{ \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wunreachable-code\"") \
_Pragma("clang diagnostic ignored \"-Wimplicit-retain-self\"") \
return ((void)(NO && ((void)object.property, NO)), @#property); \
_Pragma("clang diagnostic pop") \
}())

#endif /* SwiftierKeyPath_h */
