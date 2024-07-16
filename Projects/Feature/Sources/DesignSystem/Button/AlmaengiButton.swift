//
//  AlmaengiButton.swift
//  Feature
//
//  Created by 새미 on 5/23/24.
//

import SwiftUI

struct AlmaengiButton: View {
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(8)
                .foregroundColor(.p2)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 54)
            HStack {
                Spacer()
                AlmaengiText(title, textStyle: .h3Bold, color: .white)
                Spacer()
            }
        }
    }
}
