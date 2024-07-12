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
    
    @ObservedObject private var viewModel: LoginViewModel
    @State var accessToken: String
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        _accessToken = State(initialValue: viewModel.accessToeken)
    }
    
    var onSuccess: (String, String) -> Void
    
    var body: some View {
        Button {
            if (UserApi.isKakaoTalkLoginAvailable()) {
                UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    } 
                    else {
                        if let token = oauthToken?.accessToken {
                            // viewmodel 토큰 넣기
                        }
                    }
                }
            } else {
                UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        if let token = oauthToken?.accessToken {
                            // viewmodel 토큰 넣기
                        }
                    }
z
                }
            }
        } label : {
            Image(asset: FeatureAsset.Images.LoginButton.kakao)
        }
    }

}
