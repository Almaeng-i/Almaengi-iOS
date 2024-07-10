//
//  AlmaengiError.swift
//  Service
//
//  Created by 새미 on 7/10/24.
//

import Foundation

public enum AlmaengiError: Error {
    case wrongType
    case unauthorizedHTTP
    case notFoundToken
}

extension AlmaengiError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .wrongType:
            return "잘못된 알맹이 타입니다."
        case .unauthorizedHTTP:
            return "허용하지 않는 HTTP Method 타입입니다."
        case .notFoundToken:
            return "notFoundToken"
        }
    }
}
