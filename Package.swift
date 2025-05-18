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
            url: "https://glasseson.jfrog.io/artifactory/luna-goeyes-sdk-ios-local/6.0.6-3261-3262-3264-3266-3268-3270-3272-3275-3276-3278-3281-3285-3289-3293-3297-3301-3305-3309-3314-3320-3326-3330-3336-3343-3350-3355-3361-3368-3373-3377-3383-3391-3397-3404-3407-3414-3419-3427-3433-3439-3447-3453/GoEyesSDK.xcframework.zip",
            checksum: "2456d5d2ce561990dec688f31975618763d692197a6900c42379283466f279d2"
        )
    ]
)
