//
//  PotatoView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct PotatoView: View {
    var body: some View {
        HStack(spacing: 8) {
            Image(asset: FeatureAsset.Images.potato1)
                .resizable()
                .frame(width: 16, height: 16)
            Image(asset: FeatureAsset.Images.potato1)
                .resizable()
                .frame(width: 16, height: 16)
            Image(asset: FeatureAsset.Images.potato1)
                .resizable()
                .frame(width: 16, height: 16)
        }
    }
}

