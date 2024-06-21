//
//  ShopView.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

public struct ShopView: View {
    
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
                    HStack(spacing: 4) {
                        AlmaengiText("전체", textStyle: .bodyMedium, color: .g8)
                        Button(action: {
                            print("")
                        }, label: {
                            Image(asset: FeatureAsset.Images.Icon.downArrow)
                                .resizable()
                                .frame(width: 16, height: 16)
                        })
                    }
                }
                .padding(.vertical, 4)
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
