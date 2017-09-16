//
//  LetAndVar.h
//  Pods
//
//  Created by Inti Guo on 08/09/2017.
//
//

#ifndef LetAndVar_h
#define LetAndVar_h

#if defined(__cplusplus)
#define let auto const
#else
#define let __auto_type const 
#endif

#if defined(__cplusplus)
#define var auto
#else
#define var __auto_type
#endif

#define guard(condition) if(condition){}

#endif /* LetAndVar_h */
