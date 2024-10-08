//
//  KakaoSigninButton.swift
//  Feature
//
//  Created by 새미 on 7/1/24.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

struct KakaoSigninButton: View {
    
    var onSuccess: () -> Void
    
    var body: some View {
        Button {
            if (UserApi.isKakaoTalkLoginAvailable()) {
                UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        print("success")
                        self.onSuccess()
                    }
                }
            } else {
                UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    if oauthToken != nil {
                        print("kakao success")
                        self.onSuccess()
                    }
                }
            }
        } label : {
            Image(asset: FeatureAsset.Images.LoginButton.kakao)
        }
    }
}
