//
//  RefreshTokenResponse.swift
//  Service
//
//  Created by 새미 on 7/11/24.
//

import Foundation

public struct RefreshTokenResponse: Codable {
    public let accessToken: String
    public let refreshToken: String
    public let accessExpTime: String
}
