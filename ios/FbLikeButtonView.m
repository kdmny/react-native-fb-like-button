#import "FbLikeButtonView.h"
#import <FBSDKShareKit/FBSDKShareKit.h>

@implementation FbLikeButtonView {
  FBSDKLikeButton *likeButton;
}


- (id)init
{
    if ((self = [super init])) {
        likeButton = [[FBSDKLikeButton alloc] init];
        [self addSubview:likeButton];
    }
    
    return self;
}


- (void)setObjectID:(NSString *)objectID
{
    likeButton.objectID = objectID;
}

-(void)layoutSubviews
{
   [super layoutSubviews];
    likeButton.center = self.center;
    [self addSubview:likeButton];
}

@end
