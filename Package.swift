// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AutoDiffPackage2",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AutoDiffPackage2",
            targets: ["AutoDiffPackage2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
      .package(url: "https://github.com/philipturner/differentiation", .branch("s4tf-crasher-1")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AutoDiffPackage2",
            dependencies: [
                .product(name: "_Differentiation", package: "differentiation"),
            ]),
        .testTarget(
            name: "AutoDiffPackage2Tests",
            dependencies: ["AutoDiffPackage2"]),
    ]
)
