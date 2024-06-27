//
//  ShopView.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

public struct ShopView: View {
    
    @State  private  var selectedOptionIndex =  0
    @State  private  var showDropdown =  false
    
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
                    DropDownMenu(options: dropdownMenu, selectedOptionIndex: $selectedOptionIndex, showDropdown: $showDropdown)
                }
                .padding(.vertical, 4)
                .zIndex(1)
                VStack(spacing: 11) {
                    HStack(spacing: 11) {
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20)
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20)
                    }
                    HStack(spacing: 11) {
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20)
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20)
                    }
                    HStack(spacing: 11) {
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20)
                        ShopCell(image: Image(asset: FeatureAsset.Images.Items.Hair.ribbon), name: "리본", point: 20)
                    }
                }
                .padding(.vertical, 8)
            }
            .padding(.horizontal, 24)
        }
    }
}

