#import "Test2Plugin.h"
#if __has_include(<test2_plugin/test2_plugin-Swift.h>)
#import <test2_plugin/test2_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "test2_plugin-Swift.h"
#endif

@implementation Test2Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTest2Plugin registerWithRegistrar:registrar];
}
@end
