//
//  Font.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

internal enum AlmaengiFont: String {
    case bold
    case semiBold
    case medium

    var name: String {
        switch self {
        case .bold:
            return Pretendard.bold
        case .semiBold:
            return Pretendard.semiBold
        case .medium:
            return Pretendard.medium
        }
    }
}

struct Pretendard {
    static let bold = "Pretendard-Bold"
    static let semiBold = "Pretendard-SemiBold"
    static let medium = "Pretendard-Medium"
    
    static var all: [String] { [bold, semiBold, medium] }
}
