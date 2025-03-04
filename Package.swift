// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "APIKit",
  platforms: [
    .iOS(.v16),
    .macOS(.v14)
  ],
  products: [
    .library(
      name: "APIKit",
      targets: ["Client"]
    ),
  ],
  targets: [
    .target(
      name: "Client",
      dependencies: ["ClientCore"]
    ),
    .target(
      name: "ClientCore"
    ),
  ]
)
