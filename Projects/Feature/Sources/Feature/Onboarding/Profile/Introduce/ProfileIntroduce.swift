//
//  ProfileIntroduce.swift
//  Feature
//
//  Created by 새미 on 6/18/24.
//

import SwiftUI

struct ProfileIntroduce: View {
    @State var text: String = ""
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .leading) {
                AlmaengiText("김새미님에 대해 소개해주세요!", textStyle: .titleBold, color: .g9)
                    .padding(.vertical, 20)
                VStack(alignment: .leading, spacing: 4) {
                    AlmaengiText("한 줄 소개", textStyle: .descriptionMedium, color: .g9)
                    AlmaengiTextView(placeholder: "30자 이내로 김새미님을 간단히 소개해주세요.", height: 132)
                        .frame(width: proxy.size.width)
                }
                .padding(.vertical, 8)
                Spacer()
                VStack(spacing: 16) {
                    AlmaengiNavLink(destination: TutorialView1()) {
                        AlmaengiButton(title: "다음")
                    } action: {
                        print("")
                    }
                    Button(action: {
                        print("다음에 하기")
                    }, label: {
                        AlmaengiNavLink(destination: TutorialView1()) {
                            AlmaengiText("다음에 할게요", textStyle: .bodyBold, color: .p3)
                        } action: {
                            print("")
                        }
                    })
                }
                .padding(.vertical, 20)
            }
        }
        .AlmaengiNavBarItems(title: "프로필 등록", backButtonHidden: false, backgroundColor: .clear)
        .padding(.horizontal, 24)
    }
}
