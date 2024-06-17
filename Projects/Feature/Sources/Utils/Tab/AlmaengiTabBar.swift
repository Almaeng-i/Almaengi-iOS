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
        Image(asset: FeatureAsset.Images.Tab.Selected.home),
        Image(asset: FeatureAsset.Images.Tab.Selected.bucketlist),
        Image(asset: FeatureAsset.Images.Tab.Selected.shop),
        Image(asset: FeatureAsset.Images.Tab.Selected.push),
        Image(asset: FeatureAsset.Images.Tab.Selected.mypage)
    ]
    
    let unSelectedImage = [
        Image(asset: FeatureAsset.Images.Tab.UnSelected.home),
        Image(asset: FeatureAsset.Images.Tab.UnSelected.bucketlist),
        Image(asset: FeatureAsset.Images.Tab.UnSelected.shop),
        Image(asset: FeatureAsset.Images.Tab.UnSelected.push),
        Image(asset: FeatureAsset.Images.Tab.UnSelected.mypage)
    ]
    
    public init() { }
    
    public var body: some View {
        AlmaengiNavView {
            ZStack {
                ZStack {
                    switch selectedIndex {
                    case 0:
                        MainView()
                    case 1:
                        ListView()
                    case 2:
                        Image(asset: FeatureAsset.Images.Tab.UnSelected.home)
                    case 3:
                        PushView()
                    case 4:
                        MypageView()
                    default:
                        Image(asset: FeatureAsset.Images.Tab.UnSelected.home)
                    }
                }
                VStack {
                    Spacer()
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
                    .background(selectedIndex == 0 ? .clear : .white)
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            .AlmaengiNavigationBackButtonHidden(true)
        }
    }
}
