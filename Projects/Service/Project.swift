import ProjectDescription

let project = Project(
    name: "Service",
    targets: [
        .target(
            name: "Service",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "com.Almaengi.Service",
            sources: ["Sources/**"],
            dependencies: []
        )
    ]
)
