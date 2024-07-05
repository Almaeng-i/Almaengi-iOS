//
//  OnboardingViewModel.swift
//  Feature
//
//  Created by 새미 on 7/5/24.
//

import SwiftUI
import Combine
import Moya
import Service

class OnboardingViewModel: BaseViewModel {
    @Published var userName: String
    @Published var profileURL: String?
    @Published var introduction: String = ""
    
    let profileProvider = MoyaProvider<ProfileService>()
    
    init(userName: String, profileURL: String?, introduction: String) {
        self.userName = userName
        self.profileURL = profileURL
        self.introduction = introduction
    }
    
    func createProfile() {
        
    }
}
