// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GameJamTemplate",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GameJamTemplate",
            targets: ["GameJamTemplate"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/migueldeicaza/SwiftGodot", from: "0.22.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GameJamTemplate",
            dependencies: ["SwiftGodot"]
        ),
        .testTarget(
            name: "GameJamTemplateTests",
            dependencies: ["GameJamTemplate"]
        ),
    ]
)
