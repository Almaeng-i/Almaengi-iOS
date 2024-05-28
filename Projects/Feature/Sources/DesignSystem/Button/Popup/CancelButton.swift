//
//  CancelButton.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

struct CancelButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
            AlmaengiText("취소", textStyle: .bodyBold, color: .p3)
        }
        .frame(width: 84, height: 40)
    }
}
