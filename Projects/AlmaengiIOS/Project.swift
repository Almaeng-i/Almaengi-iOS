import ProjectDescription

let project = Project(
    name: "AlmaengiIOS",
    settings: .settings(
        configurations: [
            .debug(name: .debug, xcconfig: "./Almaengi.xcconfig"),
            .release(name: .release, xcconfig: "./Almaengi.xcconfig")
        ]
    ),
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
                    "UIUserInterfaceStyle": "Light",
                    "LSApplicationQueriesSchemes": [
                        "kakaokompassauth",
                        "kakaolink"
                    ],
                    "KAKAO_NATIVE_APP_KEY": "${KAKAO_NATIVE_APP_KEY}",
                    "NSAppTransportSecurity": [
                        "NSAllowsArbitraryLoads": false
                    ]
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
