//
//  AlmaengiToken.swift
//  Feature
//
//  Created by 새미 on 7/5/24.
//

import Foundation
import Security

public class KeyChain {
    public static let shared = KeyChain()
    
    func create(key: String, token: String) {
        let query: NSDictionary = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key,
            kSecValueData: token.data(using: .utf8, allowLossyConversion: false) as Any
        ]
        SecItemDelete(query)
        let status = SecItemAdd(query, nil)
        assert(status == noErr, "Failed to save Token")
    }
    
    public func read(key: String) -> String? {
        let query: NSDictionary = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key,
            kSecReturnData: kCFBooleanTrue as Any,
            kSecMatchLimit: kSecMatchLimitOne
        ]
        
        var dataTypeRef: AnyObject?
        let status = SecItemCopyMatching(query, &dataTypeRef)
        
        if status == errSecSuccess {
            if let retrievedData: Data = dataTypeRef as? Data {
                let value = String(data: retrievedData, encoding: String.Encoding.utf8)
                return value
            } else { return nil }
        } else {
            print("Status code: \(status)")
            return nil
        }
    }
    
    func update(token: Any, key: Any) -> Bool {
        let prevQuery: [CFString: Any] = [kSecClass: kSecClassGenericPassword,
                                    kSecAttrAccount: key]
        let updateQuery: [CFString: Any] = [kSecValueData: (token as AnyObject).data(using: String.Encoding.utf8.rawValue) as Any]
        
        let result: Bool = {
            let status = SecItemUpdate(prevQuery as CFDictionary, updateQuery as CFDictionary)
            if status == errSecSuccess { return true }
            
            print(status.description)
            return false
        }()
        
        return result
    }
    
    func delete(key: String) {
        let query: NSDictionary = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key
        ]
        
        let status = SecItemDelete(query)
        if status != errSecSuccess {
            print("Failed to delete item from Keychain with status code \(status)")
        }
    }
}

public struct Const {
    public struct KeyChainKey {
        public static let accessToken = "accessToken"
        static let refreshToken = "refreshToken"
        static let authority = "authority"
    }
}
