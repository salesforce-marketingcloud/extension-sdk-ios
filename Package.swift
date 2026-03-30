// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MCExtensionSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "MCExtensionSDK",
            targets: ["MCExtensionSDKWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/salesforce-marketingcloud/app-group-internal-sdk", from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MCExtensionSDK",
            path: "MCExtensionSDK/MCExtensionSDK.xcframework"
        ),
        .target(
            name: "MCExtensionSDKWrapper",
            dependencies: [
                .target(name: "MCExtensionSDK"),
                .product(name: "AppGroupSDK", package: "app-group-internal-sdk")
            ],
            path: "MCExtensionSDK"
        )
    ]
)
