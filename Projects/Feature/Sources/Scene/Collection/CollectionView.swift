//
//  CollectionView.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

public struct CollectionView: View {
    
    @State var selectedImageName: Image?
    
    public init() {}
    
    public var body: some View {
        VStack {
            VStack(spacing: 0) {
                Spacer()
                Image(asset: FeatureAsset.Images.Almaengi.Color.Potato.level3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 195)
                HStack(spacing: 8) {
                    AlmaengiText("새미", textStyle: .titleBold, color: Color(red: 0.32, green: 0.24, blue: 0.16))
                    LevelView(background: .p3)
                }
                Spacer()
            }
            AlmaengiList(selectedImageName: $selectedImageName)
        }
        .background(Color.p1)
        .ignoresSafeArea()
        .AlmaengiNavigationBackgroundColor(.p1)
        .AlmaengiNavigationTitle("수집한 알맹이")
    }
}
