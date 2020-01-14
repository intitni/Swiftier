//
//  With.h
//  Pods
//
//  Created by Shangxin Guo on 2020/1/14.
//

#ifndef With_h
#define With_h

#define withObject(object, name, block) ^typeof(object) {\
    __block typeof(object) it = object;\
    ^block();\
    return it;\
}()\

#endif /* With_h */
