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
            url: "https://pub-cac6f86c3ee04b919167390091469db5.r2.dev/PreludeCore-0.1.0.xcframework.zip",
            checksum: "4a86e74d3e4ba57c721f441b24e2400469ab811b2bef75c2c0cf698e518947ad"
        ),
    ]
)
