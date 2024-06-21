//
//  ShopCell.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

struct ShopCell: View {
    var image: Image
    var name: String
    var point: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                Rectangle()
                    .cornerRadius(8)
                    .foregroundColor(.p1)
                    .frame(width: 167, height: 138)
                image
                    .resizable()
                    .frame(width: 100, height: 100)
        
            }
            VStack(spacing: 0) {
                AlmaengiText(name, textStyle: .bodyMedium, color: .g9)
                AlmaengiText("\(point)p", textStyle: .bodyMedium, color: .g8)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 4)
        }
    }
}
