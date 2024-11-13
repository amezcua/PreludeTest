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
              url: "http://to//var/folders/dd/z1xr5gyn44nd746xk647660w0000gn/T/tmp.J7T4SebwDd/PreludeCore-0.1.0.xcframework.zip",
              checksum: "a6ef1e8027feeab77161094db1b0e7ea49cfcaa95df5db85d334f752d112896e"
          ),
    ]
)
