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

#import "NSObject+SwiftyInvocation.h"
#import "SIInvocation.h"
#import "SIMethodSignature.h"
#import "SIMethodSignature_Private.h"

FOUNDATION_EXPORT double SwiftyInvocationVersionNumber;
FOUNDATION_EXPORT const unsigned char SwiftyInvocationVersionString[];

