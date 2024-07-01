import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct AlmaengiIOSApp: App {
    let nativeAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
    
    init() {
        KakaoSDK.initSDK(appKey: nativeAppKey as! String)
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
