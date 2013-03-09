//
//  JXSNTPMacros.h
//  ios-ntp
//
//  Created by jiaxi on 13-3-9.
//  Copyright (c) 2013年 Ramsay Consulting. All rights reserved.
//

#import <Foundation/Foundation.h>

#define NTP_Logging(fmt, ...)
#define LogInProduction(fmt, ...) \
NSLog((@"%@|" fmt), [NSString stringWithFormat: @"%24s", \
[[[self class] description] UTF8String]], ##__VA_ARGS__)