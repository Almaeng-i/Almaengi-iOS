import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct AlmaengiIOSApp: App {
    
    let nativeAppKey = Bundle.feature.object(forInfoDictionaryKey: "KAKAO_NATIVE_APP_KEY") as? String ?? ""
    
    init() {
        KakaoSDK.initSDK(appKey: nativeAppKey)
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    if (AuthApi.isKakaoTalkLoginUrl(url)) {
                        _ = AuthController.handleOpenUrl(url: url)
                    }
                }
        }
    }
}

private class BundleFinder {}

extension Foundation.Bundle {
    static let feature = Bundle(for: BundleFinder.self)
}
