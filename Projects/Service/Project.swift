import ProjectDescription

let project = Project(
    name: "Service",
    targets: [
        .target(
            name: "Service",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.Service",
            sources: ["Sources/**"],
            dependencies: []
        )
    ]
)
