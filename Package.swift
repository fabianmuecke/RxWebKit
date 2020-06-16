// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "RxWebKit",
    platforms: [
        .macOS(.v10_13), .iOS(.v8)
    ],
    products: [
        .library(name: "RxWebKit", targets: ["RxWebKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", from: "5.0.0"),
    ],
    targets: [
        .target(
            name: "RxWebKit",
            dependencies: ["RxSwift", "RxCocoa"],
            path: "RxWebKit"
        )
    ]
)
