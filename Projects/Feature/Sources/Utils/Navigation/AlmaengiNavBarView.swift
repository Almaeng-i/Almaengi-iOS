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
    let backgroundColor: Color
    
    var body: some View {
        HStack(alignment: .center) {
            if showBackButton {
                backButton
            }
            Spacer()
            if showBackButton == false {
                Rectangle()
                    .frame(width: 28, height: 1)
                    .foregroundColor(.clear)
            }
            titleSection
            Spacer()
        }
        .padding(EdgeInsets(top: 8, leading: 24, bottom: 8, trailing: 52))
        .background(backgroundColor)
    }
}

extension AlmaengiNavBarView {
    private var backButton: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(asset: FeatureAsset.Images.Icon.leftArrow)
        }
    }
    
    private var titleSection: some View {
        AlmaengiText(title, textStyle: .h3Bold, color: .g9)
    }
}


