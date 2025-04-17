// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "buzzvil-ios-sdk",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "BuzzvilSDK",
      targets: [
        "BuzzvilSDKTarget",
      ]
    ),
    .library(
      name: "BuzzAvatyeAdCash",
      targets: [
        "BuzzAvatyeAdCashTarget",
      ]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", .upToNextMajor(from: "3.23.0")),
    //.package(url: "https://github.com/avatye-developer/sdk_adcash_ios", .upToNextMinor(from: "3.1.26")),
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
      path: "Sources/BuzzvilSDKTarget",
      sources: ["Sources/BuzzvilSDKTarget"]
    ),
    .target(
      name: "BuzzAvatyeAdCashTarget",
      dependencies: [
        "BuzzAvatyeAdCash",
      ],
      path: "Sources/BuzzAvatyeAdCashTarget",
      sources: ["Sources/BuzzAvatyeAdCashTarget"]
    ),
    .binaryTarget(
      name: "BuzzvilSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/19316/BuzzvilSDK.zip",
      checksum: "031ccc73dc0da027f82ba52ec3a2386efd65f0335d31e6848871f491ecb643ce"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/19316/BuzzAdBenefitSDK.zip",
      checksum: "23b660402bc36703dc62bd0be2bd2e01ac3db53383a359eebf7caebd82c7e3cf"
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/19316/BuzzBoosterSDK.zip",
      checksum: "c16f45df0dc630a1891f45bdbf8c9a4792e7cc041566073913e42122cabbe8ca"
    ),
    .binaryTarget(
      name: "BuzzAvatyeAdCash",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/19316/BuzzAvatyeAdCash.zip",
      checksum: "b04de856ad0fffdc5ad272bbe84a611d396733913bb2277ec70c489c4e03aad2"
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
