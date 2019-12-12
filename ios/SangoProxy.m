#import "SangoProxy.h"
#import <UIKit/UIKit.h>

@implementation SangoProxy

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(openGoogle)
{
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"https://google.com"]];
}

@end
