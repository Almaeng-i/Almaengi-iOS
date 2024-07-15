//
//  TodoListTemplate.swift
//  Feature
//
//  Created by 새미 on 5/29/24.
//

import SwiftUI

public struct TodoListTemplate: View {
    @State var title: String
    
    public init(title: String) {
        self._title = State(initialValue: title)
    }
    
    public var body: some View {
        VStack(spacing: 12) {
            HStack {
                AlmaengiText(title, textStyle: .h2Bold, color: .p4)
                Spacer()
                Button {
                    print("투두리스트 추가")
                } label: {
                    Image(asset: FeatureAsset.Images.Icon.plus)
                }
            }
            VStack {
                TodoListCell()
                TodoListCell()
            }
        }
        .padding(.vertical, 12)
    }
}
