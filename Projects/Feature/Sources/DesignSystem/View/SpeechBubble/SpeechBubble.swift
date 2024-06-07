//
//  SpeechBubble.swift
//  Feature
//
//  Created by 새미 on 6/7/24.
//

import SwiftUI

struct SpeechBubble: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image(asset: FeatureAsset.Images.speechBubble)
            VStack(spacing: 0) {
                AlmaengiText("오늘의 투두 확인하기!", textStyle: .descriptionBold, color: .p4)
                Button {
                    // Action
                } label: {
                    Text("TODO")
                        .font(.custom("Pretendard-Bold", size: 10))
                        .foregroundColor(.p2)
                        .underline()
                        .padding(.vertical, 5)
                }
            }
            .padding(.top, 36)
        }
    }
}
