//
//  AlmaengiNavBarContainerView.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

struct AlmaengiNavBarContainerView<Content: View>: View {
    let content: Content
    @State private var showBackButton: Bool = true
    @State private var title: String = ""
    @State private var backgroundColor: Color = .clear
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            AlmaengiNavBarView(showBackButton: showBackButton, title: title, backgroundColor: backgroundColor)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(AlmaengiNavBarTitlePreferenceKey.self, perform: { value in
            self.title = value
        })
        .onPreferenceChange(AlmaengiNavBarBackButtonHiddenPreferenceKey.self, perform: { value in
            self.showBackButton  = !value
        })
        .onPreferenceChange(AlmaengiNavBarBackgroundColorPreferenceKey.self, perform: { value in
            self.backgroundColor = value
        })
    }
}

