//
//  AlmaengiTabBar.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

struct AlmaengiTabBar: View {
    @State var selectedIndex = 0
    let selectedImageNames = ["homeSelected", "bucketlistSelected", "mypageSelected", "shopSelected"]
    let unSelectedImageNames = ["home", "bucketlist", "mypage", "shop"]
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch selectedIndex {
                case 0:
                    Image(asset: FeatureAsset.Images.home)
                case 1:
                    Image(asset: FeatureAsset.Images.home)
                case 2:
                    Image(asset: FeatureAsset.Images.home)
                case 3:
                    Image(asset: FeatureAsset.Images.home)
                default:
                    Image(asset: FeatureAsset.Images.home)
                }
            }
            HStack(spacing: 0) {
                ForEach(selectedImageNames.indices, id: \.self) { index in
                    Image(
                        selectedIndex == index ? selectedImageNames[index] : unSelectedImageNames[index]
                    )
                    .resizable()
                    .frame(width: 36, height: 36)
                    .padding(.horizontal,
                             ((UIScreen.main.bounds.width) * 0.07)
                    )
                    .gesture(
                        TapGesture()
                            .onEnded { _ in
                                selectedIndex = index
                            }
                    )
                }
            }
            .padding(.top, 8)
            .padding(.bottom, 42)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
