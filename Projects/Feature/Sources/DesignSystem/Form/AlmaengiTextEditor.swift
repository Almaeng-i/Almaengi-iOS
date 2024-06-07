//
//  AlmaengiTextEditor.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct AlmaengiTextEditor: View {
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            VStack(alignment: .trailing, spacing: 0) {
               TextField("50자 이내로 새미님을 간단히 소개해주세요.", text: $text, axis: .vertical)
                    .frame(maxWidth: .infinity, maxHeight: 48)
                Spacer()
                Text(limit)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.g3)
                    .font(Font(FeatureFontFamily.Pretendard.medium.font(size: 14)))
            }
            .padding(16)
            .cornerRadius(8)
            .frame(height: 132)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .inset(by: 0.5)
                    .stroke(Color.g4, lineWidth: 1)
            )
        }
    }
}

extension AlmaengiTextEditor {
    var limit: AttributedString {
        var text: AttributedString = "0/30"
        let colorRange = text.range(of: "0")!
        text[colorRange].foregroundColor = .p3
        return text
    }
}
