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
              checksum: "cb46aabd91c543f46984e391dcb2ac4b9f4b1e728001d0288f1392f7037d2892"
          ),
    ]
)
