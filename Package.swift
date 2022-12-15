cat > Package.swift <<-EOF
// swift-tools-version:5.0
import PackageDescription
let package = Package(
    name: "MatrixCreator",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "MatrixCreator",
            targets: ["MatrixCreator"])
    ],
    targets: [
        .binaryTarget(
            name: "MatrixCreator",
            path: "MatrixCreator.xcframework")
    ])
EOF
