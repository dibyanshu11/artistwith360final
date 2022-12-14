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

#import "Swifty360Player-umbrella.h"
#import "Video360Plugin.h"

FOUNDATION_EXPORT double video_360VersionNumber;
FOUNDATION_EXPORT const unsigned char video_360VersionString[];

