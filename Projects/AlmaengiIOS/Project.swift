import ProjectDescription

let project = Project(
    name: "AlmaengiIOS",
    targets: [
        .target(
            name: "AlmaengiIOS",
            destinations: .iOS,
            product: .app,
            bundleId: "com.Almaengi",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                    "CFBundleDisplayName": "알맹이",
                    "UIUserInterfaceStyle": "Light"
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Feature", path: "../Feature"),
                .project(target: "Service", path: "../Service"),
                .external(name: "Moya"),
                .external(name: "KakaoSDKCommon"),
                .external(name: "KakaoSDKAuth"),
                .external(name: "KakaoSDKUser")
            ]
        ),
        .target(
            name: "AlmaengiIOSTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.AlmaengiTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "AlmaengiIOS")]
        )
    ]
)
