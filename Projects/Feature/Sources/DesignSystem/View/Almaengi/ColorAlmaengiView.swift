//
//  ColorAlmaengiView.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

struct ColorAlmaengiView: View {
    var index: Int
    var image: Image
    var backgroundColor: Color {
        if image == Image(asset: FeatureAsset.Images.Almaengi.Color.Peach.level3) {
            return .subPink
        } else if image == Image(asset: FeatureAsset.Images.Almaengi.Color.Chestnut.level3) {
            return .subOrange
        } else if image == Image(asset: FeatureAsset.Images.Almaengi.Color.Corn.level3) {
            return .subYellow
        } else if image == Image(asset: FeatureAsset.Images.Almaengi.Color.Potato.level3) {
            return .p1
        } else if image == Image(asset: FeatureAsset.Images.Almaengi.Color.Avocado.level3) {
            return .subGreen
        } else if image == Image(asset: FeatureAsset.Images.Almaengi.Color.Sweetpotato.sweetpotato3) {
            return .subPurple
        } else {
            return .g2
        }
    }
    @Binding var selectedIndex: Int?
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(8)
                .foregroundColor(backgroundColor)
                .frame(maxWidth: 104, maxHeight: 104)
            image
                .resizable()
                .frame(width: 80, height: 80)
                .padding(12)
        }
        .onTapGesture {
            selectedIndex = index
        }
    }
}
