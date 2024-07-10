//
//  AccountsError.swift
//  Service
//
//  Created by 새미 on 7/10/24.
//

import Foundation

public enum AccountsError: Error {
    case unauthorizedToken
    case unauthorizedHTTP
}

extension AccountsError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unauthorizedToken:
            return "유효하지 않은 토큰입니다."
        case .unauthorizedHTTP:
            return "허용하지 않는 HTTP Method 타입입니다."
        }
    }
}
