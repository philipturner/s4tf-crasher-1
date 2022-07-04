// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AutoDiffPackage2",
    products: [
        .library(
            name: "AutoDiffPackage2",
            targets: ["AutoDiffPackage2"]),
    ],
    dependencies: [
        
    ],
    targets: [
//      .target(
//        name: "_Differentiation",
//        dependencies: []),
//      .target(
//        name: "Differentiation",
//        dependencies: ["_Differentiation"],
//        swiftSettings: [.unsafeFlags(["-parse-stdlib"])]
//      ),
        .target(
            name: "AutoDiffPackage2",
            dependencies: [
//                "_Differentiation"
            ]),
        .testTarget(
            name: "AutoDiffPackage2Tests",
            dependencies: ["AutoDiffPackage2"]),
    ]
)
