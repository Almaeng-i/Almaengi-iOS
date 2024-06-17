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
        Image(asset: FeatureAsset.Images.Almaengi.Color.Potato.level1),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Sweetpotato.level3),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Peach.level2),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Chestnut.level2),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Corn.level2),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Avocado.level2)
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
                AlmaengiNavLink(destination: NamingView(name: "")) {
                    AlmaengiButton(title: "다음")
                }
                .padding(.vertical, 20)
            }
            .padding(.horizontal, 24)
            .AlmaengiNavBarItems(title: "알맹이 선택", backButtonHidden: true, backgroundColor: .clear)
        }
    }
}

