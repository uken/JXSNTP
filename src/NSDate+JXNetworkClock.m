

#import "NSDate+JXNetworkClock.h"

@implementation NSDate (JXNetworkClock)

- (NSTimeInterval) timeIntervalSinceNetworkDate {
  return [self timeIntervalSinceDate:[NSDate networkDate]];
}

+ (NSTimeInterval) timeIntervalSinceNetworkDate {
  return [[self date] timeIntervalSinceNetworkDate];
}


+ (NSDate *) networkDate {
  return [[JXNetworkClock sharedNetworkClock] networkTime];
}

+ (NSDate *) threadsafeNetworkDate {
  JXNetworkClock *sharedClock = [JXNetworkClock sharedNetworkClock];
  @synchronized(sharedClock) {
    return [sharedClock networkTime];
  }
}


@end