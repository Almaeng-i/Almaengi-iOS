//
//  AccountsService.swift
//  Service
//
//  Created by 새미 on 7/5/24.
//

import Foundation
import Moya

public enum AccountsService {
    case kakaoLogin(autorization: String)
    case refreshToken(autorization: String)
    case logout(autorization: String)
    case resign(autorization: String)
}

extension AccountsService: TargetType {
    public var baseURL: URL {
        return URL(string: BaseURL.baseURL)!
    }
    
    public var path: String {
        switch self {
        case .kakaoLogin:
            return "/accounts/kakao/login"
        case .refreshToken:
            return "/accounts/reissue-token"
        case .logout:
            return "/accounts/logout"
        case .resign:
            return "/accounts/my"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .kakaoLogin,
             .refreshToken:
            return .post
        case .logout,
             .resign:
            return .delete
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .kakaoLogin,
             .refreshToken,
             .logout,
             .resign:
            return .requestPlain
        }
    }
    
    public var headers: [String : String]? {
        switch self {
        case .kakaoLogin(let authorization),
             .refreshToken(let authorization),
             .logout(let authorization),
             .resign(let authorization):
            return ["Content-Type": "application/json", "autorization": authorization]
        }
    }
}
