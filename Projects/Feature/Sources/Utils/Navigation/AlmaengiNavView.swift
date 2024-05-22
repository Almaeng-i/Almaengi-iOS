//
//  AlmaengiNavView.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

struct AlmaengiNavView<Content: View>: View {
    let content: Content
    let backgroundColor: Color
    
    init(backgroundColor: Color = .clear, @ViewBuilder content: () -> Content) {
        self.backgroundColor = backgroundColor
        self.content = content()
    }
    var body: some View {
        NavigationView {
            AlmaengiNavBarContainerView() {
                content
            }
            .navigationBarHidden(true)
            .background(backgroundColor)
        }
        .navigationViewStyle(DefaultNavigationViewStyle())
    }
}
