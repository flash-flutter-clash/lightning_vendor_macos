//
//  FLTFirebaseAnalyticsPlugin.swift
//  firebase_analytics
//
//  Created by shanlian1234@outlook.com on 27/2/24.
//

import Foundation
import FlutterMacOS
public class SharePlusMacosPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "dev.fluttercommunity.plus/share", binaryMessenger: registrar.messenger)
        let instance = SharePlusMacosPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
