//
//  AlmaengiType.swift
//  Feature
//
//  Created by 새미 on 7/11/24.
//

import Foundation

public enum AlmaengiType {
    case potato
    case sweetpotato
    case peach
    case chestnut
    case corn
    case avocado
}


extension AlmaengiType {
    var almaengiType: String {
        switch self {
        case .potato:
            return "감자"
        case .sweetpotato:
            return "고구마"
        case .peach:
            return "복숭아"
        case .chestnut:
            return "밤"
        case .corn:
            return "옥수수"
        case .avocado:
            return "아보카도"
        }
    }
}
