//
//  SectionCell.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

struct SectionCell: View {
    var icon: Image
    var title: String
    
    var body: some View {
        HStack(spacing: 12) {
            icon
            AlmaengiText(title, textStyle: .bodyMedium, color: .g9)
            Spacer()
            Image(asset: FeatureAsset.Images.rightArrow)
        }
    }
}
