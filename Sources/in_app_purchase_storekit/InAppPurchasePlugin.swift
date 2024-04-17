//
//  FLTFirebaseAnalyticsPlugin.swift
//  firebase_analytics
//
//  Created by shanlian1234@outlook.com on 27/2/24.
//

import Foundation
import FlutterMacOS
public class InAppPurchasePlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "plugins.flutter.io/in_app_purchase", binaryMessenger: registrar.messenger)
        let instance = InAppPurchasePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
