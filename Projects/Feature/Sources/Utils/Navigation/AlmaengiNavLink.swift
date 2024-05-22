//
//  AlmaengiNavLink.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

struct AlmaengiNavLink<Label: View, Destination: View>: View {
    
    let destination: Destination
    let label: Label
    
    init(destination: Destination, @ViewBuilder label: () -> Label) {
        self.destination = destination
        self.label = label()
    }
    
    var body: some View {
        NavigationLink(destination: AlmaengiNavBarContainerView(content: {
            destination
        })
            .navigationBarHidden(true)
        ) {
            label
        }
    }
}
