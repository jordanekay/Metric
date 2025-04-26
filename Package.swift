// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Metric",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Metric",
            targets: ["Metric"]
        )
    ],
    targets: [.target(name: "Metric")],
    swiftLanguageModes: [.v6]
)

for target in package.targets {
    target.swiftSettings = [
        .enableExperimentalFeature("StrictConcurrency"),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault")
    ]
}

