//
//  SharePlatformViewFactory.h
//  flutter_airplay_plugin
//
//  Created by ZhouYuan on 2019/9/5.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface SharePlatformViewFactory : NSObject <FlutterPlatformViewFactory>

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger>*)messager;

-(NSObject<FlutterMessageCodec> *)createArgsCodec;

-(NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args;

@end

NS_ASSUME_NONNULL_END
