//
//  AlmaengiNavBarView.swift
//  Feature
//
//  Created by 새미 on 5/22/24.
//

import SwiftUI

struct AlmaengiNavBarView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let showBackButton: Bool
    let title: String
    
    var body: some View {
        HStack(alignment: .center) {
            if showBackButton {
                backButton
            }
            Spacer()
            titleSection
            Spacer()
        }
        .padding(EdgeInsets(top: 8, leading: 24, bottom: 8, trailing: 52))
    }
}

extension AlmaengiNavBarView {
    private var backButton: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(.left)
        }
    }
    
    private var titleSection: some View {
        AlmaengiText(title, textStyle: .h3Bold, color: .grayscale9)
    }
}


