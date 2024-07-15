//
//  WeeklyMonthlyButton.swift
//  Feature
//
//  Created by 새미 on 5/29/24.
//

import SwiftUI

struct WeeklyMonthlyButton: View {
    
    @Binding var monthlyTab: Bool
    
    private var buttonText: String {
        if monthlyTab {
            return "월"
        } else {
            return "주"
        }
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(12)
                .foregroundColor(.p1)
            AlmaengiText(buttonText, textStyle: .descriptionMedium, color: .p2)
                .padding(.horizontal, 10)
        }
        .frame(width: 32, height: 22)
    }
}
