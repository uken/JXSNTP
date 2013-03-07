/*╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
  ║ NetworkClock.h                                                                                   ║
  ║                                                                                                  ║
  ║ Created by Gavin Eadie on Oct17/10                                                               ║
  ║ Copyright 2010 Ramsay Consulting. All rights reserved.                                           ║
  ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝*/

#define NTP_Logging(fmt, ...)
#define LogInProduction(fmt, ...) \
NSLog((@"%@|" fmt), [NSString stringWithFormat: @"%24s", \
[[[self class] description] UTF8String]], ##__VA_ARGS__)

#import "NetAssociation.h"
#import "NetworkClock.h"
#import "NSDate+NetworkClock.h"
