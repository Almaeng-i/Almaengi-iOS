//
//  ShopView.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

public struct ShopView: View {
    
    public init() { }
    
    public var body: some View {
        AlmaengiText("상점", textStyle: .titleBold, color: .black)
        HStack {
            Text(countText)
                .foregroundColor(.g8)
                .font(Font(FeatureFontFamily.Pretendard.medium.font(size: 16)))
            AlmaengiText("전체", textStyle: .bodyMedium, color: .g8)
            Button(action: {
                print("")
            }, label: {
                Image(asset: FeatureAsset.Images.downArrow)
            })
        }
    }
}

extension ShopView {
    @available(iOS 15, *)
    var countText: AttributedString {
        var text: AttributedString = "총 18개"
        let colorRange = text.range(of: "18")!
        text[colorRange].foregroundColor = .p3
        return text
    }
}

