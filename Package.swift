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
              url: "http://to//var/folders/dd/z1xr5gyn44nd746xk647660w0000gn/T/tmp.zF5IXbZM61/PreludeCore-0.1.0.xcframework.zip",
              checksum: "a6fd0828b56d4e878dcf81d18e573f153a649d77708f5d8283b376cc9c93a4fe"
          ),
    ]
)
