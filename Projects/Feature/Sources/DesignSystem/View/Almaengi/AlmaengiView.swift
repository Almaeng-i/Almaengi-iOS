//
//  AlmaengiView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct AlmaengiView: View {
    
    var image: Image
    var name: String
    var index: Int
    
    @Binding var selectedIndex: Int?
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .center, spacing: 8) {
                image
                    .resizable()
                    .frame(width: 76, height: 76)
                AlmaengiText(name, textStyle: .bodyBold, color: .p2)
            }
            .padding(.vertical, 11)
            .padding(.horizontal, 15)
            .background(Color.init(red: 0.97, green: 0.95, blue: 0.93))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .inset(by: 0.5)
                    .stroke(Color.p3, lineWidth: selectedIndex == index ? 1 : 0)
            )
            .cornerRadius(8)
            if selectedIndex == index {
                SelectMark()
            }
        }
        .onTapGesture {
            selectedIndex = index
        }
    }
}

