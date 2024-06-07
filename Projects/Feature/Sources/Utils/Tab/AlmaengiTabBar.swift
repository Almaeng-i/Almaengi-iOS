//
//  AlmaengiTabBar.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

public struct AlmaengiTabBar: View {
    
    @State var selectedIndex = 0
    
    let selectedImage = [
        Image(asset: FeatureAsset.Images.homeSelected),
        Image(asset: FeatureAsset.Images.bucketlistSelected),
        Image(asset: FeatureAsset.Images.shopSelected),
        Image(asset: FeatureAsset.Images.pushSelected),
        Image(asset: FeatureAsset.Images.mypageSelected)
    ]
    
    let unSelectedImage = [
        Image(asset: FeatureAsset.Images.home),
        Image(asset: FeatureAsset.Images.bucketlist),
        Image(asset: FeatureAsset.Images.shop),
        Image(asset: FeatureAsset.Images.push),
        Image(asset: FeatureAsset.Images.mypage)
    ]
    
    public init() { }
    
    public var body: some View {
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
                ForEach(selectedImage.indices, id: \.self) { index in
                    (selectedIndex == index ? AnyView(selectedImage[index]) : AnyView(unSelectedImage[index]))
                    .frame(width: 36, height: 36)
                    .padding(.horizontal,
                             ((UIScreen.main.bounds.width) * 0.05)
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
