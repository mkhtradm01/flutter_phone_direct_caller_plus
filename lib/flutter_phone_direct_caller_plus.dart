
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPhoneDirectCallerPlus {
  static const MethodChannel _channel = MethodChannel('flutter_phone_direct_caller_plus');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
