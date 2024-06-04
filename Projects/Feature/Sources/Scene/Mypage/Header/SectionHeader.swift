//
//  SectionHeader.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

struct SectionHeader: View {
    var title: String
    
    var body: some View {
        HStack {
            AlmaengiText(title, textStyle: .descriptionMedium, color: .g6)
            Spacer()
            Rectangle()
                .foregroundColor(.g2)
                .frame(height: 1)
        }
    }
}
