// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Reporter",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Reporter",
            targets: ["Reporter"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "Reporter",
                              url: "https://github.com/09samit/Reporter/releases/tag/1.0.0/Backtrace_PLCrashReporter.xcframework.zip",
                              checksum: "baf9fd33542b54e7dd4c01de3b327d7898ac25853095404f88dfec99605f76b9"),
        .target(name: "Reporter", dependencies: ["Reporter"])
    ]
)
