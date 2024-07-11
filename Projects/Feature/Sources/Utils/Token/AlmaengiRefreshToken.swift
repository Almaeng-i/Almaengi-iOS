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
    private var reissuanceData: RefreshTokenResponse?
    private lazy var refreshToken = "Bearer " + (keychain.read(key: Const.KeyChainKey.refreshToken) ?? "")
    
    func reissueToken() {
        accountProvider.request(.refreshToken(refreshtoken: refreshToken)) { response in
            switch response {
            case .success(let result):
                let statucCode = result.statusCode
                
                switch statucCode {
                case 200:
                    do {
                        self.reissuanceData = try result.map(RefreshTokenResponse.self)
                    } catch(let err) {
                        print(String(describing: err))
                    }
                    self.updateKeychainToken()
                case 401:
                    print("err")
                case 405:
                    print("err")
                default:
                    print("rr")
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func updateKeychainToken() {
        
    }
}
