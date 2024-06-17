//
//  PotatoView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct PotatoView: View {
    private let potatoImage = Image(asset: FeatureAsset.Images.Almaengi.Color.Potato.level1)
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<3) { _ in
                potatoImage
                    .resizable()
                    .frame(width: 16, height: 16)
            }
        }
    }
}

