#import "FbLikeButtonViewManager.h"
#import "FbLikeButtonView.h"

@implementation FbLikeButtonViewManager

RCT_EXPORT_MODULE();

- (UIView *)view
{
    return [[FbLikeButtonView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(objectID, NSString);

@end
