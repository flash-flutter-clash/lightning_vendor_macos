// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v10.1.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif

private func ulWrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func ulWrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details,
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)",
  ]
}

private func ulNilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

/// Possible error conditions for [UrlLauncherApi] calls.
enum UrlLauncherError: Int {
  /// The URL could not be parsed as an NSURL.
  case invalidUrl = 0
}

/// Possible results for a [UrlLauncherApi] call with a boolean outcome.
///
/// Generated class from Pigeon that represents data sent in messages.
struct UrlLauncherBoolResult {
  var value: Bool
  var error: UrlLauncherError? = nil

  static func fromList(_ list: [Any?]) -> UrlLauncherBoolResult? {
    let value = list[0] as! Bool
    var error: UrlLauncherError? = nil
    let errorEnumVal: Int? = ulNilOrValue(list[1])
    if let errorRawValue = errorEnumVal {
      error = UrlLauncherError(rawValue: errorRawValue)!
    }

    return UrlLauncherBoolResult(
      value: value,
      error: error
    )
  }
  func toList() -> [Any?] {
    return [
      value,
      error?.rawValue,
    ]
  }
}
private class UrlLauncherApiCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
    case 128:
      return UrlLauncherBoolResult.fromList(self.readValue() as! [Any?])
    default:
      return super.readValue(ofType: type)
    }
  }
}

private class UrlLauncherApiCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? UrlLauncherBoolResult {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class UrlLauncherApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return UrlLauncherApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return UrlLauncherApiCodecWriter(data: data)
  }
}

class UrlLauncherApiCodec: FlutterStandardMessageCodec {
  static let shared = UrlLauncherApiCodec(readerWriter: UrlLauncherApiCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol UrlLauncherApi {
  /// Returns a true result if the URL can definitely be launched.
  func canLaunch(url: String) throws -> UrlLauncherBoolResult
  /// Opens the URL externally, returning a true result if successful.
  func launch(url: String) throws -> UrlLauncherBoolResult
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class UrlLauncherApiSetup {
  /// The codec used by UrlLauncherApi.
  static var codec: FlutterStandardMessageCodec { UrlLauncherApiCodec.shared }
  /// Sets up an instance of `UrlLauncherApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: UrlLauncherApi?) {
    /// Returns a true result if the URL can definitely be launched.
    let canLaunchUrlChannel = FlutterBasicMessageChannel(
      name: "dev.flutter.pigeon.UrlLauncherApi.canLaunchUrl", binaryMessenger: binaryMessenger,
      codec: codec)
    if let api = api {
      canLaunchUrlChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let urlArg = args[0] as! String
        do {
          let result = try api.canLaunch(url: urlArg)
          reply(ulWrapResult(result))
        } catch {
          reply(ulWrapError(error))
        }
      }
    } else {
      canLaunchUrlChannel.setMessageHandler(nil)
    }
    /// Opens the URL externally, returning a true result if successful.
    let launchUrlChannel = FlutterBasicMessageChannel(
      name: "dev.flutter.pigeon.UrlLauncherApi.launchUrl", binaryMessenger: binaryMessenger,
      codec: codec)
    if let api = api {
      launchUrlChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let urlArg = args[0] as! String
        do {
          let result = try api.launch(url: urlArg)
          reply(ulWrapResult(result))
        } catch {
          reply(ulWrapError(error))
        }
      }
    } else {
      launchUrlChannel.setMessageHandler(nil)
    }
  }
}