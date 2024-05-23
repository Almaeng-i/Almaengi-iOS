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
                .foregroundColor(.primary2)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 54)
            AlmaengiText(title, textStyle: .h3Bold, color: .white)
                .padding(.vertical, 15)
                .padding(.horizontal, 127)
        }
    }
}
