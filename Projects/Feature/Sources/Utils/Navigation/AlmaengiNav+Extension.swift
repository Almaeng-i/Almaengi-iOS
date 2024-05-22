//
//  AlmaengiNav+Extension.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

extension View {
    func AlmaengiNavigationTitle(_ title: String) -> some View {
        preference(key: AlmaengiNavBarTitlePreferenceKey.self, value: title)
    }
    
    func AlmaengiNavigationBackButtonHidden(_ hidden: Bool) -> some View {
        preference(key: AlmaengiNavBarBackButtonHiddenPreferenceKey.self, value: hidden)
    }
    
    func AlmaengiNavBarItems(title: String, backButtonHidden: Bool) -> some View {
        self
            .AlmaengiNavigationTitle(title)
            .AlmaengiNavigationBackButtonHidden(backButtonHidden)
    }
}
