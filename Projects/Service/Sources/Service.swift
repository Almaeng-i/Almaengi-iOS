//
//  Service.swift
//  Service
//
//  Created by 새미 on 5/22/24.
//

public struct UserProfileModel: Decodable {
    let date: UserProfileMode
}

public struct UserProfileMode: Decodable {
    public let userName: String
    public let userIntroduction: String
    public let userImage: String
}
