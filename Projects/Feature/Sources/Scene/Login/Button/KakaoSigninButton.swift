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
    var body: some View {
        Button {
            if (UserApi.isKakaoTalkLoginAvailable()) {
                UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    if let oauthToken = oauthToken {
                    }
                }
            } else {
                UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    if let oauthToken = oauthToken {
                        print("kakao success")
                    }
                }
            }
        } label : {
            Image(asset: FeatureAsset.Images.LoginButton.kakao)
        }
    }
}
