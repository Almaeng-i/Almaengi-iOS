//
//  TodoListCell.swift
//  Feature
//
//  Created by 새미 on 5/29/24.
//

import SwiftUI

struct TodoListCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(asset: FeatureAsset.Images.Check.darkCheck)
            AlmaengiText("오늘의 TO DO", textStyle: .bodyMedium, color: .g9)
            Spacer()
            Image(asset: FeatureAsset.Images.Icon.meatballMenu)
        }
    }
}
