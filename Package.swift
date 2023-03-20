// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pcaf-mbl-cb",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "pcaf-mbl-cb",
            targets: ["pcaf-mbl-cb"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/couchbase/couchbase-lite-swift-ee.git", from: "3.0.2"),
        .package(url: "https://github.com/TW-Shrey/pcaf-mbl-sf-intfc-pkg.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "pcaf-mbl-cb",
            dependencies: [.product(name: "pcaf-mbl-sf-intfc-pkg", package: "pcaf-mbl-sf-intfc-pkg"),
                           .product(name: "CouchbaseLiteSwift", package: "couchbase-lite-swift-ee")
            ]
        ),
        .testTarget(
            name: "pcaf-mbl-cbTests",
            dependencies: ["pcaf-mbl-cb"]),
    ]
)
//"pcaf-mbl-sf-intfc-pkg",
//"CouchbaseLiteSwift"
