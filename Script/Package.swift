// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "MyScript",
    products: [
        .executable(name: "MyScript", targets: ["MyScript"]),
        ],
    dependencies: [
        .package(url: "https://github.com/jpsim/Yams.git", from: "1.0.1")
    ],
    targets: [
        .target(
            name: "MyScript",
            dependencies: ["Yams"],
            path: "Sources")
        ]
)
