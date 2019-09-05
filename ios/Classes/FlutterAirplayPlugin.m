#import "FlutterAirplayPlugin.h"
#import "SharePlatformViewFactory.h"

@implementation FlutterAirplayPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_airplay_plugin"
            binaryMessenger:[registrar messenger]];
  FlutterAirplayPlugin* instance = [[FlutterAirplayPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];

  [registrar registerViewFactory:[[SharePlatformViewFactory alloc] initWithMessenger:registrar.messenger] withId:@"platform_route_picker_view"];

}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
