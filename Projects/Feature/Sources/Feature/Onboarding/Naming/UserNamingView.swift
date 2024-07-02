//
//  UserNamingView.swift
//  Feature
//
//  Created by 새미 on 7/2/24.
//

import SwiftUI

struct UserNamingView: View {
    @State var name: String
    
    var body: some View {
        AlmaengiNavView {
            VStack(alignment: .leading) {
                AlmaengiText(
                    "반가워요! 알맹이 앱에서 사용될\n내 이름을 알려주세요.",
                    textStyle: .titleBold,
                    color: .g9
                )
                .padding(.vertical, 20)
                AlmaengiText("이름", textStyle: .descriptionBold, color: .g9, isFixedSize: true)
                    .padding(.bottom, 4)
                AlmaengiTextField(
                    "이름을 입력해주세요.",
                    text: $name
                )
                Spacer()
                AlmaengiNavLink(destination: ProfileImageView()) {
                    AlmaengiButton(title: "다음")
                }
                .padding(.vertical, 20)
            }
            .AlmaengiNavBarItems(title: "닉네임 설정", backButtonHidden: false, backgroundColor: .clear)
            .padding(.horizontal, 24)
        }
    }
}
