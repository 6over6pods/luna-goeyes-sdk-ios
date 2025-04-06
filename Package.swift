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
            url: "https://glasseson.jfrog.io/artifactory/luna-goeyes-sdk-ios-local/6.0.1-2656-2660-2666-2672-2678-2684-2690-2696-2700-2706-2714-2720-2726-2732-2739-2744-2751-2756-2762-2768-2774-2780-2788-2794-2800-2806-2812-2818-2824-2830-2836/GoEyesSDK.xcframework.zip",
            checksum: "e0233f1fbc9c406df0ffe787cee381e088f1aae572329dbd4f05ea6ec806daa7"
        )
    ]
)
