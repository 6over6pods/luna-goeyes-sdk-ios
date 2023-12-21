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
        // .package(url: https://glasseson.jfrog.io/artifactory/luna-goeyes-sdk-ios-local/delete.me.circleci.test-public-3/GoEyesSDK.xcframework.zip
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
            url: https://glasseson.jfrog.io/artifactory/luna-goeyes-sdk-ios-local/delete.me.circleci.test-public-3/GoEyesSDK.xcframework.zip
            checksum: 85ca70aeb449b2a16a2b6d0088281574152f17553acf670b646fa5621e41d427
        )
    ]
)
