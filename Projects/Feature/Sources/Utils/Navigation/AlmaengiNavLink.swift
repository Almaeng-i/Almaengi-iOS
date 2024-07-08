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
    var action: () -> Void
    
    
    init(destination: Destination, @ViewBuilder label: () -> Label, action: @escaping () -> Void) {
        self.destination = destination
        self.label = label()
        self.action = action
    }
    
    var body: some View {
        NavigationLink(destination: AlmaengiNavBarContainerView(content: {
            destination
        })
            .navigationBarHidden(true)
        ) {
            label
        }
        .simultaneousGesture(TapGesture().onEnded{
            action()
        })
    }
}


