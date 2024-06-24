//
//  TutorialView2.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct TutorialView2: View {
    var body: some View {
        VStack(alignment: .leading) {
            AlmaengiText(
                "버킷리스트는 한 개를 이룰때마다\n10포인트씩 지급돼요! 포인트는\n상점에서 사용할 수 있어요.",
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
            AlmaengiNavLink(destination: AlmaengiTabBar()) {
                AlmaengiButton(title: "알맹이 시작하기")
            }
            .padding(.vertical, 20)
        }
        .padding(.horizontal, 24)
        .AlmaengiNavBarItems(title: "튜토리얼", backButtonHidden: false, backgroundColor: .clear)
    }
}
