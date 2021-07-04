#import "SliderPopupPlugin.h"
#if __has_include(<slider_popup/slider_popup-Swift.h>)
#import <slider_popup/slider_popup-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "slider_popup-Swift.h"
#endif

@implementation SliderPopupPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSliderPopupPlugin registerWithRegistrar:registrar];
}
@end
