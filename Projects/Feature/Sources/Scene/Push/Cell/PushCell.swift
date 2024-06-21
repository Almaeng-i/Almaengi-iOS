//
//  PushCell.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

struct PushCell: View {
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .foregroundColor(.p1)
                    .frame(width: 60, height: 60)
                Image(asset: FeatureAsset.Images.Push.potato)
            }
            VStack(alignment: .leading, spacing: 0) {
                AlmaengiText("내 알맹이가 Lv.2로 진화했어요!\n다음 단계를 향해 조금만 더 힘내볼까요?", textStyle: .descriptionMedium, color: .g9)
                AlmaengiText("2024.04.15", textStyle: .captionMedium, color: .g4)
            }
            Spacer()
            Button(action: {
                print("Hello")
            }, label: {
                Image(asset: FeatureAsset.Images.Icon.grayKebapMenu)
            })
        }
        .padding(.vertical, 10)
    }
}
