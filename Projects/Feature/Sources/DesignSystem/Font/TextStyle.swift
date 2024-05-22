//
//  TextStyle.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

public enum TextStyle {
    case h1Bold
    case h1Medium
    case h2Bold
    case h2Medium
    case h3Bold
    case h3Medium
    case bodyBold
    case bodyMedium
    case titleBold
    case titleMedium
    case descriptionBold
    case descriptionMedium
    case captionBold
    case captionMedium
}

internal extension TextStyle {
    private var fontDescription: FontDescription {
        switch self {
        case .h1Bold:
            return FontDescription(font: .bold, size: 26, lineHeight: 36, style: .headline)
        case .h1Medium:
            return FontDescription(font: .medium, size: 26, lineHeight: 36, style: .headline)
        case .h2Bold:
            return FontDescription(font: .bold, size: 20, lineHeight: 32, style: .headline)
        case .h2Medium:
            return FontDescription(font: .medium, size: 20, lineHeight: 32, style: .headline)
        case .h3Bold:
            return FontDescription(font: .bold, size: 18, lineHeight: 24, style: .headline)
        case .h3Medium:
            return FontDescription(font: .medium, size: 18, lineHeight: 24, style: .headline)
        case .bodyBold:
            return FontDescription(font: .bold, size: 16, lineHeight: 24, style: .body)
        case .bodyMedium:
            return FontDescription(font: .medium, size: 16, lineHeight: 24, style: .body)
        case .titleBold:
            return FontDescription(font: .bold, size: 24, lineHeight: 36, style: .title1)
        case .titleMedium:
            return FontDescription(font: .medium, size: 24, lineHeight: 36, style: .title1)
        case .descriptionBold:
            return FontDescription(font: .bold, size: 14, lineHeight: 22, style: .subheadline)
        case .descriptionMedium:
            return FontDescription(font: .medium, size: 14, lineHeight: 22, style: .subheadline)
        case .captionBold:
            return FontDescription(font: .bold, size: 12, lineHeight: 20, style: .caption1)
        case .captionMedium:
            return FontDescription(font: .medium, size: 12, lineHeight: 20, style: .caption1)
        }
    }
}

internal extension TextStyle {
    var font: UIFont {
        guard let font = UIFont(name: fontDescription.font.name, size: fontDescription.size) else {
            return UIFont.preferredFont(forTextStyle: fontDescription.style)
        }
    
        return UIFontMetrics.default.scaledFont(for: font)
    }

    var lineHeight: CGFloat {
        return fontDescription.lineHeight
    }
}

internal struct TextModifier: ViewModifier {
    let textStyle: TextStyle
    var isFixedSize: Bool = false
    
    func body(content: Content) -> some View {
        content
            .font(
                isFixedSize ?
                    .custom(textStyle.font.fontName, fixedSize: textStyle.font.pointSize) :
                    .custom(textStyle.font.fontName, size: textStyle.font.pointSize)
                )
  
            .lineSpacing(textStyle.lineHeight - textStyle.font.lineHeight)
            .padding(
                .vertical,
                (textStyle.lineHeight - textStyle.font.lineHeight) / 2)
    }
}

public extension View {
    func textStyle(_ textStyle: TextStyle, isFixedSize: Bool = false) -> some View {
        self
            .modifier(
                TextModifier(
                    textStyle: textStyle,
                    isFixedSize: isFixedSize
                )
            )
    }
}
