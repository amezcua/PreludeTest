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
              url: "http://to/",
              checksum: "e8ebee6a8cc803807e6fd2e89ed464ae897a045d5caff82555a8555f79a88ecc"
          ),
    ]
)
