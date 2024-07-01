//
//  ProfileModel.swift
//  Service
//
//  Created by 새미 on 7/1/24.
//

import Foundation

public struct ProfileModel: Decodable {
    let date: ProfileMode
}

public struct ProfileMode: Decodable {
    public let name: String
    public let introduction: String
    public let image: String
}
