import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_phone_direct_caller_plus/flutter_phone_direct_caller_plus.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_phone_direct_caller_plus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterPhoneDirectCallerPlus.platformVersion, '42');
  });
}
