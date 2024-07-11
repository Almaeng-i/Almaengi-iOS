//
//  ProfileError.swift
//  Service
//
//  Created by 새미 on 7/10/24.
//

import Foundation

public enum ProfileError: Error {
    case wrongImage
    case unauthorizedJSON
    case notInput
    case unauthorizedHTTP
    case exist
}

extension ProfileError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .wrongImage:
            return "잘못된 Image URL입니다."
        case .unauthorizedJSON:
            return "유효하지 않는 JSON 값입니다."
        case .notInput:
            return "닉네임을 입력하지 않았습니다."
        case .unauthorizedHTTP:
            return "유효하지 않는 HTTP Method입니다."
        case .exist:
            return "이미 존재하는 User입니다."
        }
    }
}
