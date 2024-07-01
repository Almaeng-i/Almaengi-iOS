//
//  ProfileRequest.swift
//  Service
//
//  Created by 새미 on 7/1/24.
//

import Foundation

public struct ProfileRequest: Codable {
    let name: String
    let introduction: String
    let image: String
    
    public init(name: String, introduction: String, image: String) {
        self.name = name
        self.introduction = introduction
        self.image = image
    }
}
