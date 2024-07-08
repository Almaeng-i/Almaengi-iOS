//
//  AlmaengiRequest.swift
//  Service
//
//  Created by 새미 on 7/8/24.
//

import Foundation

public struct AlmaengiRequest: Codable {
    let type: String
    let name: String
    
    public init(type: String, name: String) {
        self.type = type
        self.name = name
    }
}
