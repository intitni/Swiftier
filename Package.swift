// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swiftier",
    products: [
        .library(
            name: "Swiftier",
            targets: ["Swiftier"]),
    ],
    targets: [
        .target(
            name: "Swiftier",
            dependencies: []),
        .testTarget(
            name: "SwiftierTests",
            dependencies: ["Swiftier"]),
    ]
)
