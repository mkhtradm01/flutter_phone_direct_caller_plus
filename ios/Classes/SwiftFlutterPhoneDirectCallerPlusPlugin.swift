import Flutter
import UIKit

public class SwiftFlutterPhoneDirectCallerPlusPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_phone_direct_caller_plus", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPhoneDirectCallerPlusPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
