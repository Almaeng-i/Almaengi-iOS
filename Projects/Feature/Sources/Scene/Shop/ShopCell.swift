//
//  ShopCell.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

struct ShopCell: View {
    
    var image: Image
    var name: String
    var point: Int
    
    @Binding var selectedHaart: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topTrailing) {
                Rectangle()
                    .cornerRadius(8)
                    .foregroundColor(.p1)
                    .frame(width: 167, height: 138)
                HStack(alignment: .top, spacing: 2) {
                    image
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.leading, 26)
                        .padding(.top, 11)
                    Button(action: {
                        selectedHaart.toggle()
                    }, label: {
                        selectedHaart ? Image(asset: FeatureAsset.Images.Icon.fillHeart) : Image(asset: FeatureAsset.Images.Icon.heart)
                    })
                }
                .padding(8)
            }
            VStack(alignment: .leading, spacing: 0) {
                AlmaengiText(name, textStyle: .bodyMedium, color: .g9)
                AlmaengiText("\(point)p", textStyle: .h2Medium, color: .p2)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 4)
        }
    }
}
