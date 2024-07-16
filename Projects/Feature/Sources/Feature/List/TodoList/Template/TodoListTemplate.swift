//
//  TodoListTemplate.swift
//  Feature
//
//  Created by 새미 on 5/29/24.
//

import SwiftUI

public struct TodoListTemplate: View {
    
    @State var title: String
    @State private var isPresented: Bool = false
    
    public init(title: String) {
        self._title = State(initialValue: title)
    }
    
    public var body: some View {
        VStack(spacing: 12) {
            HStack {
                AlmaengiText(title, textStyle: .h2Bold, color: .p4)
                Spacer()
                Button {
                    self.isPresented.toggle()
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
        .almaengiAlert(isPresented: $isPresented) {
            AlmaengiAlert(title: "투두 입력",
                          width: 317,
                          heigth: 190,
                          content: "입력 창") {
                AlmaengiAlertButton(isPresented: $isPresented, type: .cancel) {
                    print("취소")
                }
            } checkButton: {
                AlmaengiAlertButton(isPresented: $isPresented, type: .check) {
                    print("확인")
                }
            }

        }
    }
}
