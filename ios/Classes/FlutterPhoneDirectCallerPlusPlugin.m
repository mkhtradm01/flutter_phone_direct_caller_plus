#import "FlutterPhoneDirectCallerPlusPlugin.h"
#if __has_include(<flutter_phone_direct_caller_plus/flutter_phone_direct_caller_plus-Swift.h>)
#import <flutter_phone_direct_caller_plus/flutter_phone_direct_caller_plus-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_phone_direct_caller_plus-Swift.h"
#endif

@implementation FlutterPhoneDirectCallerPlusPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPhoneDirectCallerPlusPlugin registerWithRegistrar:registrar];
}
@end
