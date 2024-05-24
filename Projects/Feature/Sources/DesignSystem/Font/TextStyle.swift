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
    var fontDescription: FontDescription {
        switch self {
        case .h1Bold:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.bold.font(size: 26)), size: 26, lineHeight: 36)
        case .h1Medium:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.medium.font(size: 26)), size: 26, lineHeight: 36)
        case .h2Bold:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.bold.font(size: 20)), size: 20, lineHeight: 32)
        case .h2Medium:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.medium.font(size: 20)), size: 20, lineHeight: 32)
        case .h3Bold:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.bold.font(size: 18)), size: 18, lineHeight: 24)
        case .h3Medium:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.medium.font(size: 18)), size: 18, lineHeight: 24)
        case .bodyBold:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.bold.font(size: 16)), size: 16, lineHeight: 24)
        case .bodyMedium:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.medium.font(size: 16)), size: 16, lineHeight: 24)
        case .titleBold:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.bold.font(size: 24)), size: 24, lineHeight: 36)
        case .titleMedium:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.medium.font(size: 24)), size: 24, lineHeight: 36)
        case .descriptionBold:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.bold.font(size: 14)), size: 14, lineHeight: 22)
        case .descriptionMedium:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.medium.font(size: 14)), size: 14, lineHeight: 22)
        case .captionBold:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.bold.font(size: 12)), size: 12, lineHeight: 20)
        case .captionMedium:
            return FontDescription(font: Font(FeatureFontFamily.Pretendard.medium.font(size: 12)), size: 12, lineHeight: 20)
        }
    }
}
