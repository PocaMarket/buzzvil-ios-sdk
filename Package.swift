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
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", .upToNextMajor(from: "3.23.0")),
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
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/17184/BuzzvilSDK.zip",
      checksum: "ff7ff1b14a2f8f76eb1c561c1dd3b499e575b8e50a4187380619fde6787523ab"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/17184/BuzzAdBenefitSDK.zip",
      checksum: "c3a71bc600ab8d7cd0286bf3351d1e66c403be9ea744ef5e86fa8d714b1ab371"
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/17184/BuzzBoosterSDK.zip",
      checksum: "40c30728e12ccd7caeef3ebcdae575ed804e7d9432aeb7e3320cc4e7dc79c215"
    ),
    .binaryTarget(
      name: "BuzzRxSwift",
      url: "https://github.com/Buzzvil/RxSwift/releases/download/v7.0.0/BuzzRxSwift.zip",
      checksum: "772edfb6e77b41f888d4430e46e00d1ec147dc9d26b3f2ce464dbc00d678f963"
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)