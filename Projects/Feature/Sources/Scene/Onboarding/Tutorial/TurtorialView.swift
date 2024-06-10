//
//  TurtorialView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        VStack(alignment: .leading) {
            AlmaengiText(
                "준비완료! 투두리스트를 달성해서\n내 알맹이를 성장시켜 보세요.",
                textStyle: .titleBold,
                color: .g9
            )
            .multilineTextAlignment(.leading)
            .padding(.vertical, 20)
            HStack {
                Spacer()
                Image(asset: FeatureAsset.Images.todoList)
                    .resizable()
                    .frame(width: 238, height: 238)
                    .padding(.vertical, 84)
                Spacer()
            }
            Spacer()
            AlmaengiNavLink(destination: AlmaengiTabBar()) {
                AlmaengiButton(title: "다음")
            }
            .padding(.vertical, 20)
        }
        .padding(.horizontal, 24)
    }
}
