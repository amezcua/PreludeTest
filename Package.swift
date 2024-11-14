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
              checksum: "7b7854e16233fdf973f158434d9e7a0d9a879958d78effad9a64e8e196c534b2"
          ),
    ]
)
