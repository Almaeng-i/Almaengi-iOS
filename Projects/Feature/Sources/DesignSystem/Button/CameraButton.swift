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
                .foregroundColor(.primary2)
                .frame(width: size, height: size)
            Image(.camera   )
                .resizable()
                .resizeImage(imgName: "camera", imageWidth: (size / 2) + 2)
        }
    }
}
