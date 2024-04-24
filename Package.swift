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
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", .upToNextMajor(from: "3.22.1")),
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
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/12851/BuzzvilSDK.zip",
      checksum: "d5be6df04c076edc70a4f9ad4a6e864be657b5991dd4684c69cc14a67253b43f"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/12851/BuzzAdBenefitSDK.zip",
      checksum: "52feb93be0398c11d64d8441d8734e32eb49a3ba40459d1016bed30c3d393384"
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/12851/BuzzBoosterSDK.zip",
      checksum: "3d42ec63b9335c0c6a42a200af541b04f128786b46831dfe3f5075a1d5cd29d1"
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