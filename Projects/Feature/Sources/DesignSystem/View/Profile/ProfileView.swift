//
//  ProfileView.swift
//  Feature
//
//  Created by 새미 on 5/24/24.
//

import SwiftUI

struct ProfileView: View {
    let size: CGFloat

    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.init(red: 0.94, green: 0.9, blue: 0.87))
                .frame(width: size, height: size)
            Image(asset: FeatureAsset.Images.Icon.person)
                .resizable()
                .frame(width: ((size / 2) - 2), height: ((size / 2) - 2))
        }
    }
}
