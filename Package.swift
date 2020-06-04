import PackageDescription

let package = Package(
    name: "SwiftUIExt",
    products: [
        .library(
            name: "SwiftUIExt",
            targets: ["SwiftUIExt"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUIExt",
            dependencies: []),
        .testTarget(
            name: "SwiftUIExtTests",
            dependencies: ["SwiftUIExt"]),
    ]
)
