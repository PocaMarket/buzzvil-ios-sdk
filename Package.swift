// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "buzzvil-ios-sdk",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(
      name: "BuzzvilSDK",
      targets: [
        "BuzzvilSDKTarget",
      ]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", .upToNextMajor(from: "3.18.5")),
  ],
  targets: [
    .target(
      name: "BuzzvilSDKTarget",
      dependencies: [
        "BuzzvilSDK",
        "BuzzAdBenefitSDK",
        "BuzzBoosterSDK",
        "BuzzRxSwift",
        .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios"),
      ],
      path: "Sources/BuzzvilSDKTarget"
    ),
    .binaryTarget(
      name: "BuzzvilSDK",
      url: "",
      checksum: ""
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "",
      checksum: ""
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      url: "",
      checksum: ""
    ),
    .binaryTarget(
      name: "BuzzRxSwift",
      url: "",
      checksum: ""
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)
