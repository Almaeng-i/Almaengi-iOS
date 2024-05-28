//
//  AlmaengiTextField.swift
//  Feature
//
//  Created by 새미 on 5/23/24.
//

import SwiftUI

struct AlmaengiTextField: View {
    var placeholder: String
    var helpMessage: String
    var isError: Bool
    var isEmpty: Bool { text.isEmpty }
    
    @Binding var text: String
    @FocusState var isFocused: Bool
    @Environment(\.isEnabled) var isEnabled

    private var borderForegroundColor: Color {
        if isFocused {
            return .p4
        } else if isError {
            return .systemRed
        } else {
            return .g4
        }
    }
    
    public init(
            _ placeholder: String = "",
            text: Binding<String>,
            helpMessage: String = "",
            isError: Bool = false,
            isEmpty: Bool = false
    ) {
        self.placeholder = placeholder
        self._text = text
        self.helpMessage = helpMessage
        self.isError = isError
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            TextField(placeholder, text: $text)
                .cornerRadius(8)
                .padding(.vertical, 15)
                .padding(.horizontal, 16)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .inset(by: 0.5)
                        .stroke(borderForegroundColor, lineWidth: 1)
                )
                .focused($isFocused)
                .foregroundColor(.g9)
                .disabled(!isEnabled)
            AlmaengiText(helpMessage, textStyle: .descriptionMedium, color: isError ? .systemRed : .clear, isFixedSize: true)
        }
    }
}
