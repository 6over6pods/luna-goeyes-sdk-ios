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
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GoEyesSDKWrapper",
            dependencies: [.target(name: "GoEyesSDK")]
        ),
        .binaryTarget(
            name: "GoEyesSDK",
            url: "https://glasseson.jfrog.io/artifactory/luna-goeyes-sdk-ios-local/6.0.1-2651-2652-2654-2658-2665-2670-2676-2682-2688-2694-2702-2708-2712-2718-2722-2730-2736-2740-2748-2754-2760-2766-2772-2778-2784-2790-2796-2802-2809-2816/GoEyesSDK.xcframework.zip",
            checksum: "cc3de1837f4d915be2f8f6e19d4a7e15b571a18aaf69340749fca6b8064d1c92"
        )
    ]
)
