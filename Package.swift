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
  dependencies: [],
  targets: [
    .target(
      name: "BuzzvilSDKTarget",
      dependencies: [
        "BuzzvilSDK",
        "BuzzAdBenefitSDK",
        "BuzzBoosterSDK",
        "BuzzRxSwift",
      ],
      path: "Sources/BuzzvilSDKTarget"
    ),
    .binaryTarget(
      name: "BuzzvilSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/13109/BuzzvilSDK.zip",
      checksum: "806d13ee5401b8b93c29b2dfb343ba215218afbd1b079fb404351cda2d69e9aa"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/13109/BuzzAdBenefitSDK.zip",
      checksum: "c3d4b5b2e0669ddd00edd834a89c81dc61ad2ccfcc427471504203bf93bc6dc4"
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/13109/BuzzBoosterSDK.zip",
      checksum: "0b9d72c9937b7f4d65ab4b8c215f3e85df91403d3823ba16d2fe30152eaa4f2a"
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