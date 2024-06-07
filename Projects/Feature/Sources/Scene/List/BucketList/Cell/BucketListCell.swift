//
//  BucketListCell.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

public struct BucketListCell: View {
    
    var title: String
    var content: String
    var background: Color
    var isAchieve: Bool
    
    public var body: some View {
        HStack(spacing: 16) {
            isAchieve ? Image(asset: FeatureAsset.Images.lightCheck) : Image(asset: FeatureAsset.Images.defaultCheck)
            VStack(alignment: .leading, spacing: 0) {
                AlmaengiText(
                    title,
                    textStyle: isAchieve ? .bodyMedium : .bodyMedium, 
                    color: isAchieve ? .white : .g9
                )
                AlmaengiText(
                    content,
                    textStyle: .descriptionMedium,
                    color: isAchieve ? .white : .g5
                    )
            }
            Spacer()
            Button {
                print("수정 또는 삭제")
            } label: {
                isAchieve ? Image(asset: FeatureAsset.Images.whiteKebapMenu) : Image(asset: FeatureAsset.Images.grayKebapMenu)
            }
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 16)
        .background(isAchieve ? Color.p3 : Color.white)
        .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(isAchieve ? Color.p3 : Color.g4, lineWidth: 1)
            )
        .cornerRadius(8)
    }
}
