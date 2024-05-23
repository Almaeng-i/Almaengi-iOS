//
//  AlmaengiTextField.swift
//  Feature
//
//  Created by 새미 on 5/23/24.
//

import SwiftUI

struct AlmaengiTextField: View {
    var title: String
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
            title: String = "",
            text: Binding<String>,
            helpMessage: String = "",
            isError: Bool = false,
            isEmpty: Bool = false
    ) {
        self.placeholder = placeholder
        self.title = title
        self._text = text
        self.helpMessage = helpMessage
        self.isError = isError
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            AlmaengiText(title, textStyle: .descriptionBold, color: .g9, isFixedSize: true)
                .padding(.bottom, 4)
            TextField(placeholder, text: $text)
                .focused($isFocused)
                .foregroundColor(.g9)
                .disabled(!isEnabled)
            AlmaengiText(helpMessage, textStyle: .descriptionMedium, color: isError ? .systemRed : .clear, isFixedSize: true)
        }
    }
}
