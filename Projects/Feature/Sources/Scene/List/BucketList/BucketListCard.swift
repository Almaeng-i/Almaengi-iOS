//
//  BucketListCard.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

public struct BucketListCard: View {
    
    var title: String
    var content: String
    var background: Color
    var isAchieve: Bool
    
    public var body: some View {
        HStack(spacing: 16) {
            Image(asset: FeatureAsset.Images.lightCheck)
            VStack(alignment: .leading, spacing: 0) {
                AlmaengiText(title, textStyle: .bodyMedium, color: .white)
                AlmaengiText(content, textStyle: .descriptionMedium, color: .white)
            }
            Spacer()
            Button {
                print("수정 또는 삭제")
            } label: {
                Image(asset: FeatureAsset.Images.kebapMenu)
            }
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 16)
        .background(Color.p3)
        .cornerRadius(8)
    }
}
