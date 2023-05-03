// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwinjectAutoregistrationCurelator",
    products: [
        .library(
            name: "SwinjectAutoregistrationCurelator",
            targets: ["SwinjectAutoregistration"]),
        .library(
            name: "SwinjectAutoregistration-DynamicCurelator",
            type: .dynamic,
            targets: ["SwinjectAutoregistration"])
        
    ],
    dependencies: [
        .package(url: "https://github.com/curelator/Swinject.git")
    ],
    targets: [
        .target(
            name: "SwinjectAutoregistration",
            dependencies: [
                "SwinjectCurelator",
            ],
            path: "Sources"),
    ]
)
