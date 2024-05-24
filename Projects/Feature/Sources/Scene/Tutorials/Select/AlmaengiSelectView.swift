//
//  AlmaengiSelectView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

public struct AlmaengiSelectView: View {
    public init() {}

    private let image = [
        Image(asset: FeatureAsset.Images.potato1),
        Image(asset: FeatureAsset.Images.sweetpotato1),
        Image(asset: FeatureAsset.Images.peach2),
        Image(asset: FeatureAsset.Images.chestnut2),
        Image(asset: FeatureAsset.Images.corn2),
        Image(asset: FeatureAsset.Images.avocado2)
    ]
    
    private let almaengiNames = ["감자", "고구마", "복숭아", "밤", "옥수수", "아보카도"]
    @State var selectedIndex: Int? = nil
    
    public var body: some View {
        AlmaengiNavView {
            VStack(alignment: .leading) {
                AlmaengiText(
                    "김새미님과 함께 할\n알맹이를 선택해주세요.",
                    textStyle: .titleBold,
                    color: .g9
                )
                .padding(.vertical, 20)
                VStack(spacing: 8) {
                    HStack(spacing: 8) {
                        ForEach(0..<3) { index in
                            AlmaengiView(
                                image: image[index],
                                name: almaengiNames[index], index: index, selectedIndex: $selectedIndex)
                        }
                    }
                    HStack {
                        ForEach(3..<6) { index in
                            AlmaengiView(
                                image: image[index],
                                name: almaengiNames[index], index: index, selectedIndex: $selectedIndex)
                        }
                    }
                }
                .padding(.vertical, 8)
                Spacer()
//                AlmaengiNavLink(destination: NamingView(name: "")) {
//                    AlmaengiButton(title: "다음")
//                }
                .padding(.vertical, 20)
            }
            .padding(.horizontal, 24)
            .AlmaengiNavBarItems(title: "알맹이 선택", backButtonHidden: true)
        }
    }
}

