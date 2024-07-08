//
//  AlmaengiService.swift
//  Service
//
//  Created by 새미 on 7/8/24.
//

import Foundation
import Moya

public enum AlmaengiService {
    case createNewAlmaengi(autorization: String, param: AlmaengiRequest)
    case myCollection(autorization: String)
}

extension AlmaengiService: TargetType {
    public var baseURL: URL {
        return URL(string: BaseURL.baseURL)!
    }
    
    public var path: String {
        switch self {
        case .createNewAlmaengi:
            return "/almaengi/"
        case .myCollection:
            return "/almaengi/mycollection"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .createNewAlmaengi:
            return .post
        case .myCollection:
            return .get
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .createNewAlmaengi(_, let param):
            return .requestJSONEncodable(param)
        case .myCollection:
            return .requestPlain
        }
    }
    
    public var headers: [String : String]? {
        switch self {
        case .createNewAlmaengi(let autorization, _),
             .myCollection(let autorization):
            return ["Content-Type": "application/json", "autorization": autorization]
        }
    }
}

