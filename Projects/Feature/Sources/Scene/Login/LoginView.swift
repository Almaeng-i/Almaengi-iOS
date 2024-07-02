//
//  LoginView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

public struct LoginView: View {
    
    @State private var isLogin: Bool = false 
    
    public init() {}
    
    public var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                PotatoView()
                    .padding(.leading, 77)
                Text(mainText)
                    .multilineTextAlignment(.center)
                    .lineSpacing(6)
                    .padding(.vertical, 6)
                    .foregroundColor(.g9)
                    .font(Font(FeatureFontFamily.Pretendard.bold.font(size: 26)))
            }
            .padding(.top, 128)
            .padding(.bottom, 24)
            .frame(maxWidth: .infinity)
            Image(asset: FeatureAsset.Images.Almaengi.Color.Sprout.sprout)
                .resizable()
                .scaledToFit()
                .frame(width: 250)
            Spacer()
            VStack(spacing: 12) {
                Image(asset: FeatureAsset.Images.LoginButton.apple)
                KakaoSigninButton {
                    self.isLogin = true
                }
            }
            .padding(.vertical, 24)
            .fullScreenCover(isPresented: $isLogin, content: {
                AlmaengiTabBar()
            })
        }
        .padding(.horizontal, 24)
    }
}

// MARK: - Extension
extension LoginView {
    @available(iOS 15, *)
    var mainText: AttributedString {
        var text: AttributedString = "나만의 알맹이를 성장시키는\n특별한 경험을 즐겨보세요."
        let colorRange = text.range(of: "알맹이")!
        text[colorRange].foregroundColor = .p2
        return text
    }
}
