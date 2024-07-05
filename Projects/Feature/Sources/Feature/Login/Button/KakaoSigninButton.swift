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
    
    var onSuccess: (String, String) -> Void
    
    var body: some View {
        Button {
            if (UserApi.isKakaoTalkLoginAvailable()) {
                UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else if let token = oauthToken?.accessToken, let refreshToekn = oauthToken?.refreshToken {
                        self.onSuccess(token, refreshToekn)
                    }
                }
            } else {
                UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    if let token = oauthToken?.accessToken, let refreshToken = oauthToken?.refreshToken {
                        self.onSuccess(token, refreshToken)
                    }
                }
            }
        } label : {
            Image(asset: FeatureAsset.Images.LoginButton.kakao)
        }
    }
}
