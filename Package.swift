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
            targets: ["MCExtensionSDK"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "MCExtensionSDK",
            path: "MCExtensionSDK/MCExtensionSDK.xcframework"
        )
    ]
)
