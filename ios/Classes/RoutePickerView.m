//
//  RoutePickerView.m
//  flutter_airplay_plugin
//
//  Created by ZhouYuan on 2019/9/5.
//

#import "RoutePickerView.h"
#import <AVKit/AVRoutePickerView.h>
@implementation RoutePickerView {
    int64_t _viewId;
    FlutterMethodChannel* _channel;
    UIView* _routePickerView;
}

- (instancetype)initWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args binaryMessenger:(NSObject<FlutterBinaryMessenger> *)messenger{
    if (@available(iOS 11.0, *)) {
        _routePickerView = [[AVRoutePickerView alloc]init];
        _routePickerView.tintColor = UIColor.clearColor;
        _routePickerView.backgroundColor = UIColor.clearColor;
    } else {
        _routePickerView = [[UIView alloc]init];
    }
    return self;
}

-(UIView *)view{
    return _routePickerView;
}

@end
