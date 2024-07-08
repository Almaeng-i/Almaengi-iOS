//
//  TutorialView1.swift
//  Feature
//
//  Created by 새미 on 6/18/24.
//

import SwiftUI

struct TutorialView1: View {
    var body: some View {
        VStack(alignment: .leading) {
            AlmaengiText(
                "알맹이 키우기 준비완료!\n일간 목표는 1%,월간 목표는 5%\n만큼 내 알맹이가 성장해요",
                textStyle: .titleBold,
                color: .g9
            )
            .padding(.vertical, 20)
            HStack {
                Spacer()
                Image(asset: FeatureAsset.Images.Etc.todoList)
                    .resizable()
                    .frame(width: 238, height: 238)
                    .padding(.vertical, 84)
                Spacer()
            }
            Spacer()
            AlmaengiNavLink(destination: TutorialView2()) {
                AlmaengiButton(title: "다음")
            } action: {
                print("")
            }
            .padding(.vertical, 20)
        }
        .padding(.horizontal, 24)
        .AlmaengiNavBarItems(title: "튜토리얼", backButtonHidden: false, backgroundColor: .clear)
    }
}
