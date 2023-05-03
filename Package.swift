// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwinjectAutoregistration",
    products: [
        .library(
            name: "SwinjectAutoregistration",
            targets: ["SwinjectAutoregistration"]),
        .library(
            name: "SwinjectAutoregistration-Dynamic",
            type: .dynamic,
            targets: ["SwinjectAutoregistration"])
        
    ],
    dependencies: [
        .package(url: "https://github.com/curelator/Swinject.git", .revision(“00bac187e24813f73315d407651086c6f4220c2b”))
    ],
    targets: [
        .target(
            name: "SwinjectAutoregistration",
            dependencies: [
                "Swinject",
            ],
            path: "Sources"),
    ]
)
