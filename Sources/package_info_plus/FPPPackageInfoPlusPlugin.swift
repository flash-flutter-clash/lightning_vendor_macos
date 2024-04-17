import Cocoa
import FlutterMacOS

public class FPPPackageInfoPlusPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "dev.fluttercommunity.plus/package_info", binaryMessenger: registrar.messenger)
        let instance = FPPPackageInfoPlusPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getAll":
            handleGetall(result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    private func handleGetall(result: @escaping FlutterResult)-> Void{
        

        let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName")
        let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")
        let buildNumber = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion")


        result([
            "appName": appName,
            "version": version,
            "buildNumber": buildNumber
           
        ] as [String: Any?])
    }
}
