//
//  AlmaengiTabBar.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

public struct AlmaengiTabBar: View {
    
    @State var selectedIndex = 0
    
    private var iconColors: [Color] {
        switch selectedIndex {
        case 0:
            return [
                Color(red: 0.32, green: 0.24, blue: 0.16),
                .white,.white,.white,.white
            ]
        case 1:
            return [
                .g3,.g9,.g3,.g3,.g3
            ]
        case 2:
            return [
                .g3,.g3,.g9,.g3,.g3
            ]
        case 3:
            return [
                .g3,.g3,.g3,.g9,.g3
            ]
        case 4:
            return [
                .g3,.g3,.g3,.g3,.g9
            ]
        default:
            return Array(repeating: Color.white, count: icon.count)
        }
    }
    
    private let icon = [
        Image(asset: FeatureAsset.Images.Tab.home),
        Image(asset: FeatureAsset.Images.Tab.list),
        Image(asset: FeatureAsset.Images.Tab.shop),
        Image(asset: FeatureAsset.Images.Tab.notice),
        Image(asset: FeatureAsset.Images.Tab.my)
    ]
    
    public init() { }
    
    public var body: some View {
        ZStack {
            ZStack {

                switch selectedIndex {
                case 0:
                    MainView()
                case 1:
                    ListView()
                case 2:
                    ShopView()
                case 3:
                    PushView()
                case 4:
                    MypageView()
                default:
                    Image(asset: FeatureAsset.Images.Tab.home)
                }
            }
            
            VStack {
                Spacer()
                HStack(spacing: 0) {
                    ForEach(icon.indices, id: \.self) { index in
                        icon[index]
                            .renderingMode(.template)
                            .foregroundColor(self.iconColors[index])
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
