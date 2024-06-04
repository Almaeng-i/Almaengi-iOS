//
//  ShopCell.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

struct ShopCell: View {
    var name: String
    var point: Int
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .cornerRadius(9)
                    .foregroundColor(.p1)
            }
            VStack(alignment: .leading) {
                HStack {
                    AlmaengiText(name, textStyle: .bodyMedium, color: .g9)
                    Spacer()
                    Button(action: {
                        print("")
                    }, label: {
                        Image(asset: FeatureAsset.Images.save)
                    })
                }
                AlmaengiText("\(point)p", textStyle: .bodyMedium, color: .g8)
            }
        }
    }
}
