//
//  MainView.swift
//  Feature
//
//  Created by 새미 on 6/7/24.
//

import SwiftUI

public struct MainView: View {
    
    public init() { }
    
    public var body: some View {
        VStack(alignment: .leading) {
            Text(mainText)
                .multilineTextAlignment(.leading)
                .lineSpacing(4)
                .padding(.vertical, 20)
                .foregroundColor(.g9)
                .font(Font(FeatureFontFamily.Pretendard.bold.font(size: 24)))
            Spacer()
            HStack {
                Spacer()
                VStack(spacing: 0){
                    ZStack {
                        SpeechBubble()
                            .offset(x: 98, y: -130)
                        Image(asset: FeatureAsset.Images.Almaengi.Color.Sprout.sprout)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 230)
                    }
                    VStack(spacing: 28) {
                        AlmaengiText("새미(Lv.1)", textStyle: .h2Bold, color: .p4)
                        VStack(spacing: 8) {
                            ProgressBar()
                            ZStack {
                                Image(asset: FeatureAsset.Images.Etc.colorSpeechBubble)
                                AlmaengiText("60%", textStyle: .captionMedium, color: .white)
                                    .padding(.top, 9)
                            }
                        }
                    }
                }
                Spacer()
            }
            Spacer()
        }
        .padding(.horizontal, 24)
        .background(Image(asset: FeatureAsset.Images.Background.summer).resizable().ignoresSafeArea(.container).aspectRatio(contentMode: .fill))
    }
}

extension MainView {
    @available(iOS 15, *)
    var mainText: AttributedString {
        var text: AttributedString = "김새미님,\n오늘도 아자아자 화이팅!"
        let colorRange = text.range(of: "김새미")!
        text[colorRange].foregroundColor = .p4
        return text
    }
}
