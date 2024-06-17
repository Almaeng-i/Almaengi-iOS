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
        ZStack {
            Image(asset: FeatureAsset.Images.Background.summer)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                HStack(spacing: 2) {
                    Image(asset: FeatureAsset.Images.Icon.point)
                    AlmaengiText("1181", textStyle: .bodyMedium, color: .p4)
                }
                .padding(.vertical, 8)
                .padding(.top, 32)
                AlmaengiText("D+123", textStyle: .titleBold, color: Color(red: 0.38, green: 0.27, blue: 0.18))
                    .padding(.vertical, 20)
                Spacer()
                HStack {
                    Spacer()
                    VStack(spacing: 23) {
                        ZStack {
                            SpeechBubble()
                                .offset(x: 98, y: -169)
                            Image(asset: FeatureAsset.Images.Almaengi.Color.Sprout.sprout)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 200)
                        }
                        AlmaengiText("새미(Lv.1)", textStyle: .h2Bold, color: .p4)
                        HStack(spacing: 8) {
                            ProgressBar()
                            AlmaengiText("80%", textStyle: .bodyBold, color: .p4)
                        }
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.horizontal, 24)
        }
    }
}
