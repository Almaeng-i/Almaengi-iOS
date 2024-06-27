//
//  ShopView.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

public struct ShopView: View {
    
    @State private var selectedOptionIndex =  0
    @State private var showDropdown = false
    @State private var selectedOptions: [String] = []
    @State private var selectedHaart: Bool = false
    
    let dropdownMenu: [MenuOption] = [
        MenuOption(icon: Image(asset: FeatureAsset.Images.Icon.Dropdown.glasses), menu: "안경"),
        MenuOption(icon: Image(asset: FeatureAsset.Images.Icon.Dropdown.hair), menu: "헤어"),
        MenuOption(icon: Image(asset: FeatureAsset.Images.Icon.Dropdown.face), menu: "페이스"),
        MenuOption(icon: Image(asset: FeatureAsset.Images.Icon.Dropdown.accessories), menu: "악세서리"),
        MenuOption(icon: Image(asset: FeatureAsset.Images.Icon.Dropdown.background), menu: "배경")
    ]
 
    public init() { }
    
    public var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                AlmaengiText("상점", textStyle: .titleBold, color: .black)
                    .padding(.vertical, 14)
                HStack {
                    HStack(spacing: 2) {
                        Image(asset: FeatureAsset.Images.Icon.point)
                        AlmaengiText("3423", textStyle: .bodyMedium, color: .p4)
                    }
                    Spacer()
                    DropDownMenu(
                        options: dropdownMenu,
                        selectedOptionIndex: $selectedOptionIndex,
                        showDropdown: $showDropdown,
                        selectedOptions: $selectedOptions)
                }
                .padding(.vertical, 4)
                .zIndex(1)
                
                if !selectedOptions.isEmpty {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 10) {
                            ForEach(selectedOptions, id: \.self) { option in
                                CategoryView(option: option, selectedOptions: $selectedOptions)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
                
                VStack(spacing: 11) {
                    HStack(spacing: 11) {
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20, selectedHaart: $selectedHaart)
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20, selectedHaart: $selectedHaart)
                    }
                    HStack(spacing: 11) {
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20, selectedHaart: $selectedHaart)
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20, selectedHaart: $selectedHaart)
                    }
                    HStack(spacing: 11) {
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20, selectedHaart: $selectedHaart)
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20, selectedHaart: $selectedHaart)
                    }
                }
                .padding(.vertical, 8)
            }
            .padding(.horizontal, 24)
        }
    }
}

// MARK: - Category
struct CategoryView: View {
    let option: String
    @Binding var selectedOptions: [String]
    
    var body: some View {
        HStack {
            AlmaengiText(option, textStyle: .bodyMedium, color: .p3)
            Button(action: {
                if let index = selectedOptions.firstIndex(of: option) {
                    selectedOptions.remove(at: index)
                }
            }, label: {
                Image(asset: FeatureAsset.Images.Icon.cancel)
                    .renderingMode(.template)
                    .foregroundColor(.p3)
                    .frame(width: 16, height: 16)
            })
        }
        .padding(.vertical, 3)
        .padding(.horizontal, 10)
        .overlay(
            RoundedRectangle(cornerRadius: 80)
                .inset(by: 0.5)
                .stroke(Color.p3, lineWidth: 1)
        )
    }
}

