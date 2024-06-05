//
//  LevelView.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

struct LevelView: View {
    var background: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(8)
                .foregroundColor(background)
            AlmaengiText("Lv.4", textStyle: .captionMedium, color: .white)
        }
        .frame(width: 43, height: 20)
    }
}
