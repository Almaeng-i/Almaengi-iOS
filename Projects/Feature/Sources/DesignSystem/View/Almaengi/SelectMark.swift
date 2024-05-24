//
//  SelectMark.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct SelectMark: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.p3)
                .frame(width: 24, height: 24)
                .cornerRadius(8, corners: .topLeft)
                .cornerRadius(8, corners: .bottomRight)
            Image(asset: FeatureAsset.Images.check)
        }
    }
}

