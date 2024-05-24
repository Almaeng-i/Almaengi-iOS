//
//  ProfileSettingView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct ProfileSettingView: View {
    @State var text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            AlmaengiText("프로필 정보를 등록해주세요.", textStyle: .titleBold, color: .g9)
                .padding(.vertical, 20)
            HStack {
                Spacer()
                ZStack(alignment: .bottomTrailing) {
                    ProfileView(size: 88)
                    CameraButton(size: 28)
                }
                Spacer()
            }
            .padding(.vertical, 24)
            AlmaengiTextEditor(title: "한 줄 소개", text: $text)
            Spacer()
            AlmaengiNavLink(destination: TutorialView()) {
                AlmaengiButton(title: "계속")
            }
            .padding(.bottom, 16)
            HStack {
                Spacer()
                Button(action: {
                    print("다음에 하기")
                }, label: {
                    AlmaengiText("다음에 할게요", textStyle: .bodyBold, color: .p3)
                })
                Spacer()
            }
            .padding(.bottom, 20)
        }
        .padding(.horizontal, 24)
    }
}

