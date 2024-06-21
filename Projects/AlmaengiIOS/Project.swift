import ProjectDescription

let project = Project(
    name: "AlmaengiIOS",
    targets: [
        .target(
            name: "AlmaengiIOS",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.AlmaengiIOS",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                    "CFBundleDisplayName": "알맹이",
                    "UIUserInterfaceStyle": "Light",
                    "DEVELOPMENT_TEAM": "saemi kim"
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Feature", path: "../Feature"),
                .project(target: "Service", path: "../Service"),
                .external(name: "Moya")
            ]
        ),
        .target(
            name: "AlmaengiIOSTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AlmaengiIOSTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "AlmaengiIOS")]
        )
    ]
)
