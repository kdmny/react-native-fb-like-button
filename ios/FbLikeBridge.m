
#import "RCTBridge.h"
#import "RCTConvert.h"
#import "RCTEventDispatcher.h"

#import "FbLikeBridge.h"

@interface FbLikeBridge() 

@end

@implementation FbLikeBridge

RCT_EXPORT_MODULE()

@synthesize bridge = _bridge;

#pragma mark Initialization

- (instancetype)init
{
    if (self = [super init]) {
      [[NSNotificationCenter defaultCenter]
       addObserver:self
       selector:@selector(facebookLikeNotification:)
       name:@"FBSDKLikeActionControllerDidUpdateNotification"
       object:nil];    
    }

    return self;
}

#pragma mark
// http://stackoverflow.com/questions/26236655/fblikecontrol-callback
- (void)facebookLikeNotification:(NSNotification*)notification {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
  SEL selector = @selector(objectIsLiked);
  if (notification.object && [notification.object respondsToSelector:selector]) {
    // do your stuff here, user liked!
    BOOL (*BOOLMsgSend)(id, SEL) = (typeof(BOOLMsgSend)) objc_msgSend;
    BOOL isLiked = BOOLMsgSend(notification.object, selector);

    if(isLiked){
        [self.bridge.eventDispatcher sendDeviceEventWithName:@"FbLiked" body:[NSNull null]];
    } else{
      [self.bridge.eventDispatcher sendDeviceEventWithName:@"FbUnliked" body:[NSNull null]];
    }

  }
#pragma clang diagnostic pop
  
}

@end
