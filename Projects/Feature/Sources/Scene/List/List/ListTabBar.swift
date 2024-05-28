//
//  ListTabBar.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

struct ListTabBar: View {
    var body: some View {
        HStack(spacing: 16) {
            VStack {
                AlmaengiText("투두리스트", textStyle: .bodyMedium)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 70, height: 1)
            }
            VStack {
                AlmaengiText("버킷리스트", textStyle: .bodyBold, color: .p3)
                Rectangle()
                    .foregroundColor(.p3)
                    .frame(width: 70, height: 1)
            }
        }
    }
}
