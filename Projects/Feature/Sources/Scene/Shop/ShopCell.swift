//
//  ShopCell.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

struct ShopCell: View {
    var name: String
    var point: Int
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .cornerRadius(8)
                    .foregroundColor(.p1)
                    .frame(width: 167, height: 138)
            }
            VStack(alignment: .leading) {
                AlmaengiText(name, textStyle: .bodyMedium, color: .g9)
                AlmaengiText("\(point)p", textStyle: .bodyMedium, color: .g8)
            }
        }
    }
}
