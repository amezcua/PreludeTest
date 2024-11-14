// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Prelude",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Prelude",
            type: .dynamic,
            targets: ["Prelude", "PreludeCore"]
        ),
    ],
    targets: [
        .target(
            name: "Prelude",
            dependencies: ["PreludeCore"]
        ),
        .binaryTarget(
              name: "PreludeCore",
              url: "https://prelude-public.s3.amazonaws.com/sdk/releases/apple/core/0.1.0/PreludeCore-0.1.0.xcframework.zip",
              checksum: "a04a9699a3033eb6daf289066c59f2b228f01c1812e1f7a5e2846a7a191ca4c5"
          ),
    ]
)
