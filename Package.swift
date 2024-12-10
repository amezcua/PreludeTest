// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Prelude",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "Prelude",
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
              checksum: "8787dcbef29121e03f98bd80e53ba2529b167c456b1d5c2beaef77241ca50bc2"
          ),
    ]
)
