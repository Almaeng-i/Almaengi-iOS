import ProjectDescription

let project = Project(
    name: "Feature",
    targets: [
        .target(
            name: "Feature",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "com.Almaengi.Feature",
            infoPlist: .default,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .external(name: "Moya"),
                .external(name: "KakaoSDKCommon"),
                .external(name: "KakaoSDKAuth"),
                .external(name: "KakaoSDKUser")
            ]
        )
    ]
)
