import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_airplay_plugin/flutter_airplay_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_airplay_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterAirplayPlugin.platformVersion, '42');
  });
}
