//
//  AlmaengiSelectView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI
import Service

public struct AlmaengiSelectView: View {
    
    @ObservedObject private var viewModel: OnboardingViewModel
    @State var type: String
    
    init(viewModel: OnboardingViewModel) {
        self.viewModel = viewModel
        _type = State(initialValue: viewModel.almaengiType)
    }
    
    private let image = [
        Image(asset: FeatureAsset.Images.Almaengi.Color.Potato.level1),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Sweetpotato.level1),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Peach.level2),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Chestnut.level2),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Corn.level2),
        Image(asset: FeatureAsset.Images.Almaengi.Color.Avocado.level2)
    ]
    
    private let almaengiNames = ["감자", "고구마", "복숭아", "밤", "옥수수", "아보카도"]
    @State var selectedIndex: Int? = nil
    
    public var body: some View {
        VStack(alignment: .leading) {
            AlmaengiText(
                "\(viewModel.userName)님과 함께 할\n알맹이를 선택해주세요.",
                textStyle: .titleBold,
                color: .g9
            )
            .padding(.vertical, 20)
            VStack(spacing: 8) {
                HStack(spacing: 8) {
                    ForEach(0..<3) { index in
                        AlmaengiView(
                            image: image[index],
                            name: almaengiNames[index], index: index, selectedIndex: $selectedIndex
                        )
                    }
                }
                HStack(spacing: 8) {
                    ForEach(3..<6) { index in
                        AlmaengiView(
                            image: image[index],
                            name: almaengiNames[index], index: index, selectedIndex: $selectedIndex)
                    }
                }
            }
            .padding(.vertical, 8)
            Spacer()
            AlmaengiNavLink(destination: AlmaengiNamingView(viewModel: OnboardingViewModel(userName: viewModel.userName, almaengiName: viewModel.almaengiName))) {
                AlmaengiButton(title: "다음")
            } action: {
                selectAlmaengiType()
            }
            .padding(.vertical, 20)
        }
        .AlmaengiNavBarItems(title: "알맹이 선택", backButtonHidden: false, backgroundColor: .clear)
        .padding(.horizontal, 24)
    }
    
    func selectAlmaengiType() {
        if let selectedIndex = selectedIndex {
            if selectedIndex == 0 {
                type = AlmaengiType.potato.almaengiType
            } else if selectedIndex == 1 {
                type = AlmaengiType.sweetpotato.almaengiType
            } else if selectedIndex == 2 {
                type = AlmaengiType.peach.almaengiType
            } else if selectedIndex == 3 {
                type = AlmaengiType.chestnut.almaengiType
            } else if selectedIndex == 4 {
                type = AlmaengiType.corn.almaengiType
            } else if selectedIndex == 5 {
                type = AlmaengiType.avocado.almaengiType
            }
        }
        viewModel.almaengiType = type
    }
}
