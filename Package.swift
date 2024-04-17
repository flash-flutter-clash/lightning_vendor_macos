// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lightning_vendor_macos",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(
            name: "firebase_core",
            targets: ["firebase_core"]),
        .library(
            name: "firebase_analytics",
            targets: ["firebase_analytics"]),
        .library(
            name: "firebase_crashlytics",
            targets: ["firebase_crashlytics"]),
        .library(
            name: "sqflite",
            targets: ["sqflite"]),
        .library(
            name: "connectivity_plus",
            targets: ["connectivity_plus"]),
        .library(
            name: "device_info_plus",
            targets: ["device_info_plus"]),
        .library(
            name: "flutter_js",
            targets: ["flutter_js"]),
        .library(
            name: "flutter_secure_storage_macos",
            targets: ["flutter_secure_storage_macos"]),
        .library(
            name: "in_app_purchase_storekit",
            targets: ["in_app_purchase_storekit"]),
        .library(
            name: "package_info_plus",
            targets: ["package_info_plus"]),
        .library(
            name: "path_provider_foundation",
            targets: ["path_provider_foundation"]),
        .library(
            name: "protocol_handler",
            targets: ["protocol_handler"]),
        .library(
            name: "screen_retriever",
            targets: ["screen_retriever"]),
        .library(
            name: "share_plus",
            targets: ["share_plus"]),
        .library(
            name: "shared_preferences_foundation",
            targets: ["shared_preferences_foundation"]),
        .library(
            name: "tray_manager",
            targets: ["tray_manager"]),
        .library(
            name: "url_launcher_macos",
            targets: ["url_launcher_macos"]),
        .library(
            name: "window_manager",
            targets: ["window_manager"]),
        
        
    ],
    dependencies: [
        .package(
            name:"Firebase",
            url: "https://github.com/firebase/firebase-ios-sdk", from: "10.4.0")
    ],
    targets: [
        .target(
            name: "firebase_core",
              dependencies: [
    .product(name: "FirebaseDynamicLinks", package: "Firebase")
        ],

            path:"Sources/firebase_core",
            exclude: ["firebase_core.modulemap"],
            publicHeadersPath: "include"
   ),
        .target(
            name: "firebase_analytics",
              dependencies: [
                "firebase_core",
    .product(name: "FirebaseAnalytics", package: "Firebase")
        ],

            path:"Sources/firebase_analytics",
            exclude: ["firebase_analytics.modulemap"],
            publicHeadersPath: "include"
   ),
        .target(
            name: "firebase_crashlytics",
              dependencies: [
                "firebase_core",
    .product(name: "FirebaseCrashlytics", package: "Firebase")
        ],

            path:"Sources/firebase_crashlytics",
            exclude: ["firebase_crashlytics.modulemap"],
            publicHeadersPath: "include"
   ),
        .target(
            name: "sqflite",
            path:"Sources/sqflite",
            exclude: ["sqflite.modulemap"],
            publicHeadersPath: "include"
   ),
        .target(
            name: "connectivity_plus",
            path:"Sources/connectivity_plus"
   ),
        .target(
            name: "device_info_plus",
            path:"Sources/device_info_plus"
   ),
        .target(
            name: "flutter_js",
            path:"Sources/flutter_js"
   ),
        .target(
            name: "flutter_secure_storage_macos",
            path:"Sources/flutter_secure_storage_macos"
   ),
        .target(
            name: "in_app_purchase_storekit",
            path:"Sources/in_app_purchase_storekit"
   ),
        .target(
            name: "package_info_plus",
            path:"Sources/package_info_plus"
   ),
        .target(
            name: "path_provider_foundation",
            path:"Sources/path_provider_foundation"
   ),
        .target(
            name: "protocol_handler",
            path:"Sources/protocol_handler"
   ),
        .target(
            name: "screen_retriever",
            path:"Sources/screen_retriever"
   ),
        .target(
            name: "share_plus",
            path:"Sources/share_plus"
   ),
        .target(
            name: "shared_preferences_foundation",
            path:"Sources/shared_preferences_foundation"
   ),
        .target(
            name: "tray_manager",
            path:"Sources/tray_manager"
   ),
        .target(
            name: "url_launcher_macos",
            path:"Sources/url_launcher_macos"
   ),
        .target(
            name: "window_manager",
            path:"Sources/window_manager"
   )
 ],
    swiftLanguageVersions: [.v5]

)




