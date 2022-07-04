// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AutoDiffPackage2",
    products: [],
    dependencies: [],
    targets: [
        .target(
            name: "_Differentiation"),
        .target(
            name: "AutoDiffPackage2",
            dependencies: ["_Differentiation"]),
        .testTarget(
            name: "AutoDiffPackage2Tests",
            dependencies: ["AutoDiffPackage2"]),
    ]
)
