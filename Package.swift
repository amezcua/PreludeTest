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
              checksum: "294f38ac35b462d913afb98735e0bce93622d52525f3bcf4c01de5d968a1b0a8"
          ),
    ]
)
