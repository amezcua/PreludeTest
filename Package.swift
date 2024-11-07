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
            url: "https://github.com/amezcua/PreludeTest/releases/download/0.1.0/PreludeCore.xcframework.zip",
            checksum: "https://github.com/amezcua/PreludeTest/releases/download/0.1.0/PreludeCore.xcframework.zip.checksum"
        ),
    ]
)
