//
//  File.swift
//  CharmGuard
//
//  Created by 佐伯小遥 on 2025/02/11.
//
import PackageDescription

let package = Package(
    name: "YourApp",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CharmGuard",
            targets: ["CharmGuard"]),
    ],
    targets: [
        .target(
            name: "CharmGuard",
            resources: [
                .process("Resources/Warning.mp3")
            ]
        )
    ]
)
