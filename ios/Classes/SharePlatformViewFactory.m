//
//  SharePlatformViewFactory.m
//  flutter_airplay_plugin
//
//  Created by ZhouYuan on 2019/9/5.
//

#import "SharePlatformViewFactory.h"
#import "RoutePickerView.h"

@implementation SharePlatformViewFactory {
    NSObject<FlutterBinaryMessenger>*_messenger;
}

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger> *)messager{
    self = [super init];
    if (self) {
        _messenger = messager;
    }
    return self;
}

-(NSObject<FlutterMessageCodec> *)createArgsCodec{
    return [FlutterStandardMessageCodec sharedInstance];
}

-(NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args{
    RoutePickerView *routePickerView = [[RoutePickerView alloc] initWithFrame:frame viewIdentifier:viewId arguments:args binaryMessenger:_messenger];
    return routePickerView;
}
@end
