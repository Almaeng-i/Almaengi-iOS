//
//  BaseURL.swift
//  Service
//
//  Created by 새미 on 7/1/24.
//

import Foundation

struct BaseURL {
    static let baseURL = Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String ?? ""
}
