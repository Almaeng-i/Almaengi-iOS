//
//  TodoPopup.swift
//  Feature
//
//  Created by 새미 on 5/29/24.
//

import SwiftUI

public struct TodoPopup: View {
    @State var todo: String
    
    public init(todo: String) {
        self._todo = State(initialValue: todo)
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            AlmaengiText("투두 입력", textStyle: .h3Bold, color: .g9)
            AlmaengiTextField("오늘의 투두를 입력해주세요.", text: $todo)
            Spacer()
            HStack(spacing: 8) {
                Spacer()
                Button {
                    print("취소")
                } label: {
                    CancelButton()
                }
                Button {
                    print("확인")
                } label: {
                    CheckButton()
                }
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .cornerRadius(12)
    }
}
