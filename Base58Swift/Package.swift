// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Base58Swift",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Base58Swift",
            targets: ["Base58Swift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "BigInt", url: "https://github.com/attaswift/BigInt.git", from: "5.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Base58Swift",
            dependencies: ["BigInt"]),
        .testTarget(
            name: "Base58SwiftTests",
            dependencies: ["Base58Swift"]),
    ]
)
