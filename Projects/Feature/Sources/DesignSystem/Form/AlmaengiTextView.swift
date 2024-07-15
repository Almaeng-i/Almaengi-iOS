//
//  AlmaengiTextView.swift
//  Feature
//
//  Created by 새미 on 6/25/24.
//

import SwiftUI

public struct AlmaengiTextView: View {

    @State var text: String = ""
    
    var placeholder: String
    var height: CGFloat
    
    private var borderColor: Color {
        text.isEmpty ? .g4 : .p4
    }
    
    public init(
        placeholder: String,
        height: CGFloat
    ) {
        self.placeholder = placeholder
        self.height = height
    }
    
    public var body: some View {
        TextView(text: $text,
                 textFont: .boldSystemFont(ofSize: 14),
                 isScrollEnabled: true,
                 textContainerInset: UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16),
                 placeholder: placeholder
                 )
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(borderColor, lineWidth: 1)
            )
        .frame(height: height)
    }
}
