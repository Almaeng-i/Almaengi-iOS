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
    @Published var almeangiName: String = ""
    
    init(userName: String) {
        self.userName = userName
    }
    
    let profileProvider = MoyaProvider<ProfileService>()
    
    init(userName: String, profileURL: String?, introduction: String, almaengiType: String, almaengiName: String) {
        self.userName = userName
        self.profileURL = profileURL
        self.introduction = introduction
        self.almaengiType = almaengiType
        self.almeangiName = almaengiName
    }
    
    func createProfile() {
        
    }
    
    func crateNewAlmaengi() {
        
    }
}
