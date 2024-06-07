//
//  WeeklyMonthlyButton.swift
//  Feature
//
//  Created by 새미 on 5/29/24.
//

import SwiftUI

struct WeeklyMonthlyButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(12)
                .foregroundColor(.p1)
            AlmaengiText("월", textStyle: .descriptionMedium, color: .p2)
                .padding(.horizontal, 10)
        }
        .frame(width: 32, height: 22)
    }
}
