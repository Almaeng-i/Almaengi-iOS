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
        if image == Image(asset: FeatureAsset.Images.peach3) {
            return .subPink
        } else if image == Image(asset: FeatureAsset.Images.chestnut3) {
            return .subOrange
        } else if image == Image(asset: FeatureAsset.Images.corn3) {
            return .subYellow
        } else if image == Image(asset: FeatureAsset.Images.potato3) {
            return .p1
        } else if image == Image(asset: FeatureAsset.Images.avocado3) {
            return .subGreen
        } else if image == Image(asset: FeatureAsset.Images.sweetpotato3) {
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
