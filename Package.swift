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
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/13520/BuzzvilSDK.zip",
      checksum: "7a75657d688c02503eb7e07ed38804203a846a14cd6b6a2e70bb1ab4744e4376"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/13520/BuzzAdBenefitSDK.zip",
      checksum: "3effcf238b501dd7a26e2a4a571546a260bd06778849db26773eebb56a686c01"
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/13520/BuzzBoosterSDK.zip",
      checksum: "76d48fa03d70618949b0ec3cde0ddd1584fd9f932e420cc85872ac2dd6b25e04"
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