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
    
    @Published var almaengiType: String = ""
    @Published var almaengiName: String
    
    init(userName: String, almaengiName: String) {
        self.userName = userName
        self.almaengiName = almaengiName
    }
    
    let profileProvider = MoyaProvider<ProfileService>()
    
    init(userName: String, profileURL: String?, introduction: String, almaengiType: String, almaengiName: String) {
        self.userName = userName
        self.profileURL = profileURL
        self.introduction = introduction
        self.almaengiType = almaengiType
        self.almaengiName = almaengiName
    }
    
    func createProfile() {
        
    }
    
    func crateNewAlmaengi() {
        
    }
}
