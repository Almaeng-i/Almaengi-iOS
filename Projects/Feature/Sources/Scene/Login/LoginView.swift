//
//  LoginView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

public struct LoginView: View {
    public init() {}
    
    public var body: some View {
        VStack {
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
            .frame(maxWidth: .infinity)
            Spacer()
            Image(asset: FeatureAsset.Images.sprout)
                .resizable()
                .frame(width: 222, height: 193)
            Spacer()
            VStack(spacing: 12) {
                Image(asset: FeatureAsset.Images.kakaoLogin)
                Image(asset: FeatureAsset.Images.appleLogin)
            }
            .padding(.bottom, 24)
        }
        .padding(.horizontal, 24)
    }
}

extension LoginView {
    @available(iOS 15, *)
    var mainText: AttributedString {
        var text: AttributedString = "나만의 알맹이를 성장시키는\n특별한 경험을 즐겨보세요."
        let colorRange = text.range(of: "알맹이")!
        text[colorRange].foregroundColor = .p2
        return text
    }
}
