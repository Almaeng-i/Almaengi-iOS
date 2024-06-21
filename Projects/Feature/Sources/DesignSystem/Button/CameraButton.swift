//
//  CameraButton.swift
//  Feature
//
//  Created by 새미 on 5/23/24.
//

import SwiftUI

struct CameraButton: View {
    let size: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.p2)
                .frame(width: size, height: size)
            Image(asset: FeatureAsset.Images.Icon.camera)
                .resizable()
                .frame(width: ((size / 2) + 2), height: ((size / 2) + 2))
        }
    }
}
