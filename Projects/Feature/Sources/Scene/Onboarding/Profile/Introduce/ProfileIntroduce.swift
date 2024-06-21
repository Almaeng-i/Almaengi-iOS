//
//  ProfileIntroduce.swift
//  Feature
//
//  Created by 새미 on 6/18/24.
//

import SwiftUI

struct ProfileIntroduce: View {
    var body: some View {
        VStack(alignment: .leading) {
            AlmaengiText("김새미님에 대해 소개해주세요!", textStyle: .titleBold, color: .g9)
                .padding(.vertical, 20)
            AlmaengiNavLink(destination: TutorialView1()) {
                AlmaengiButton(title: "다음")
            }
            .padding(.bottom, 16)
            HStack {
                Spacer()
                Button(action: {
                    print("다음에 하기")
                }, label: {
                    AlmaengiNavLink(destination: TutorialView1()) {
                        AlmaengiText("다음에 할게요", textStyle: .bodyBold, color: .p3)
                    }
                })
                Spacer()
            }
            .padding(.bottom, 20)
        }
        .AlmaengiNavBarItems(title: "프로필 등록", backButtonHidden: false, backgroundColor: .clear)
        .padding(.horizontal, 24)
    }
}

private struct TextWritingView: View {
    
    @State var text: String = ""
    
    private var registerButtonDisabled: Bool {
        text.isEmpty
    }
    private var borderColor: Color {
        text.isEmpty ? .g4 : .p4
    }
    
    var body: some View {
        VStack {
            AlmaengiText("한 줄 소개", textStyle: .descriptionMedium, color: .g9)
            ZStack {
                AlmaengiTextView(
                    text: $text, 
                    textFont: .systemFont(ofSize: 1, weight: .medium),
                    cornerRadius: 8,
                    borderWidth: 1
                    )
            }
        }
    }
    
}
