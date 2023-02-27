// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoEyesSDK",
    defaultLocalization: "en-US",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoEyesSDK",
            targets: ["GoEyesSDKWrapper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/mixpanel/mixpanel-swift",
            "3.2.0" ..< "4.0.0"
        ),
        .package(
            url: "https://github.com/kirualex/SwiftyGif.git",
            "5.0.0" ..< "6.0.0"
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GoEyesSDKWrapper",
            dependencies: [.product(name: "Mixpanel", package: "mixpanel-swift"),
                           .product(name: "SwiftyGif", package: "swiftygif"),
                           .target(name: "GoEyesSDK")]
        ),
        .binaryTarget(
            name: "GoEyesSDK",
            url: "https://glasseson.jfrog.io/artifactory/luna-goeyes-sdk-ios-local/5.39.0/GoEyesSDK.xcframework.zip",
            checksum: "6d08943c6b967055ecb0b9631461eb429fa276a94852d67bed9a60f8c7b3ff2c"
        )
    ]
)
