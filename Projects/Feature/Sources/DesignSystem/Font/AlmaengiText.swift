//
//  AlmaengiText.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

public struct AlmaengiText: View {
    var text: String
    var textStyle: TextStyle
    var color: Color
    var isFixedSize: Bool
    
    public init(
        _ text: String,
        textStyle: TextStyle,
        color: Color = .black,
        isFixedSize: Bool = true
    ) {
        self.text = text
        self.textStyle = textStyle
        self.color = color
        self.isFixedSize = isFixedSize
    }
    
    public var body: some View {
        Text(LocalizedStringKey(text))
            .textStyle(
                textStyle,
                isFixedSize: isFixedSize
            )
            .foregroundColor(color)
    }
}
