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
            url: "https://glasseson.jfrog.io/artifactory/luna-goeyes-sdk-ios-local/6.0.5-3047-3048-3051-3055-3059-3063-3067-3071-3075-3079-3083-3087-3091-3095-3101-3105-3107-3111-3115-3119-3123-3127-3131-3135-3137-3141-3145-3149-3153-3158-3161-3165-3169-3173-3177-3181-3185-3189-3193-3197/GoEyesSDK.xcframework.zip",
            checksum: "61ec75b4d1562a766658a13faf5ab792e1104dcb08268305ebd7beddebbda1a5"
        )
    ]
)
