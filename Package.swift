// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Interrobang",
    products: [
        .library(
            name: "Interrobang",
            targets: ["Interrobang"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Interrobang",
            dependencies: []),
        .testTarget(
            name: "InterrobangTests",
            dependencies: ["Interrobang"]),
    ]
)
