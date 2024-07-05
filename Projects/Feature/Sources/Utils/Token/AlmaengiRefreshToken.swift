//
//  AlmaengiRefreshToken.swift
//  Feature
//
//  Created by 새미 on 7/5/24.
//

import Moya
import Service

public class AlmaengiRefreshToken {
    public static let shared = AlmaengiRefreshToken()
    private let keychain = KeyChain()
    private let accountProvider = MoyaProvider<AccountsService>()
    private lazy var refreshToken = "Bearer " + (keychain.read(key: Const.KeyChainKey.refreshToken) ?? "")
    
    func updateKeychainToken() {
        
    }
}
