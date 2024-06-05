//
//  AlmaengiList.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

public struct AlmaengiList: View {
    @State var selectedIndex: Int? = nil
    @Binding var selectedImageName: Image?
    private let images = [
        Image(asset: FeatureAsset.Images.peach3),
        Image(asset: FeatureAsset.Images.potato3),
        Image(asset: FeatureAsset.Images.sweetpotato3),
        Image(asset: FeatureAsset.Images.corn3),
        Image(asset: FeatureAsset.Images.avocado3),
        Image(asset: FeatureAsset.Images.chestnut3)
    ]
    
    public var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 12) {
                AlmaengiText("알맹이 리스트", textStyle: .h2Bold, color: .g9)
                HStack(spacing: 12) {
                    ForEach(0..<3) { index in
                        ColorAlmaengiView(index: index, image: images[index], selectedIndex: $selectedIndex)
                            .onTapGesture {
                                selectedIndex = index
                                selectedImageName = images[index]
                            }
                    }
                }
                HStack(spacing: 12) {
                    ForEach(3..<6) { index in
                        ColorAlmaengiView(index: index, image: images[index], selectedIndex: $selectedIndex)
                            .onTapGesture {
                                selectedIndex = index
                                selectedImageName = images[index]
                            }
                    }
                }
            }
        
        }
        .padding(EdgeInsets(top: 26, leading: 29, bottom: 52, trailing: 28))
        .background(.white)
        .cornerRadius(32, corners: .topLeft)
        .cornerRadius(32, corners: .topRight)
    }
}
