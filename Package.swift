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
            url: "https://glasseson.jfrog.io/artifactory/luna-goeyes-sdk-ios-local/6.0.5-3050-3053-3057-3061-3065-3069-3073-3077-3081-3085-3089-3093-3097-3099-3103-3109-3113-3117-3121-3125-3129-3133-3139-3143-3147-3151-3155-3159-3163-3167-3171-3175-3179-3184-3187/GoEyesSDK.xcframework.zip",
            checksum: "4d91b7f2f59def31632fffc232e1deb9ee6c40929a8272ee063ceed5b94cdce7"
        )
    ]
)
