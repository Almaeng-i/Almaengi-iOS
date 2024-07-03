//
//  ProfileService.swift
//  Service
//
//  Created by 새미 on 7/3/24.
//

import Foundation
import Moya

public enum ProfileServices {
    case createProfile(authorization: String, param: ProfileRequest)
    case updateProfile(authorization: String, param: ProfileRequest)
    case getProfile(authorization: String)
}

extension ProfileServices: TargetType {
    public var baseURL: URL {
        return URL(string: BaseURL.baseURL)!
    }
    
    public var path: String {
        switch self {
        case .createProfile:
            return "/userprofile/"
        case .updateProfile:
            return "/userprofile/update"
        case .getProfile:
            return "/userprofile/my"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .createProfile:
            return .post
        case .updateProfile:
            return .patch
        case .getProfile:
            return .get
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .createProfile(_, let param):
            return .requestJSONEncodable(param)
        case .updateProfile(_, let param):
            return .requestJSONEncodable(param)
        case .getProfile:
            return .requestPlain
        }
    }
    
    public var headers: [String : String]? {
        switch self {
        case .createProfile(let authorization, _),
             .updateProfile(let authorization, _),
             .getProfile(let authorization):
            return ["Content-Type": "application/json", "autorization": authorization]
        }
    }
}
