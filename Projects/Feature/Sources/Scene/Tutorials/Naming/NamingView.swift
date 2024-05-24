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
        VStack {
            HStack(spacing: 0) {
                AlmaengiText(
                    "반가워요! 내 알맹이의\n이름을 지어볼까요?",
                    textStyle: .titleBold,
                    color: .g9
                )
                Spacer()
                Image(asset: FeatureAsset.Images.sprout)
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            .padding(.vertical, 20)
            AlmaengiTextField(
                "알맹이의 이름을 입력해주세요.",
                title: "이름",
                text: $name,
                helpMessage: "알맹이 이름은 20자까지 지을 수 있어요."
            )
            Spacer()
            //            AlmaengiNavLink(destination: TutorialView()) {
            //                AlmaengiButton(title: "다음")
            //            }
                .padding(.vertical, 20)
        }
        .padding(.horizontal, 24)
    }
}
