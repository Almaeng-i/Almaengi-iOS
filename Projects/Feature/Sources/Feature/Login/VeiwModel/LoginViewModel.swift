//
//  LoginViewModel.swift
//  Feature
//
//  Created by 새미 on 7/11/24.
//

import SwiftUI
import Combine
import Moya
import Service

class LoginViewModel: BaseViewModel {
    
    @Published var accessToeken: String
    
    let accountsProvider = MoyaProvider<AccountsService>()

    init(accessToken: String) {
        self.accessToeken = accessToken
    }
    
    func login() {
        
    }
}
