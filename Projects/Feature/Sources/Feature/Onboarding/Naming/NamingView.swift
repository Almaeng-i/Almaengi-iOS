//
//  NamingView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct NamingView: View {
    @State var name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 0) {
                AlmaengiText(
                    "반가워요! 내 알맹이의\n이름을 지어볼까요?",
                    textStyle: .titleBold,
                    color: .g9
                )
                Spacer()
                Image(asset: FeatureAsset.Images.Almaengi.Color.Sprout.sprout)
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            .padding(.vertical, 20)
            AlmaengiText("이름", textStyle: .descriptionBold, color: .g9, isFixedSize: true)
                .padding(.bottom, 4)
            AlmaengiTextField(
                "알맹이의 이름을 입력해주세요.",
                text: $name,
                helpMessage: "알맹이 이름은 20자까지 지을 수 있어요."
            )
            Spacer()
            AlmaengiNavLink(destination: ProfileImageView()) {
                AlmaengiButton(title: "다음")
            }
            .padding(.vertical, 20)
        }
        .AlmaengiNavBarItems(title: "알맹이 이름", backButtonHidden: false, backgroundColor: .clear)
        .padding(.horizontal, 24)
    }
}
