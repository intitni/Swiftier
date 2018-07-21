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

#if defined(__cplusplus)
#define weaklet __weak auto const
#else
#define weaklet __weak __auto_type const
#endif

#if defined(__cplusplus)
#define weakvar __weak auto
#else
#define weakvar __weak __auto_type
#endif

#endif /* LetAndVar_h */
