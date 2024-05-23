//
//  Image+Extension.swift
//  Feature
//
//  Created by 새미 on 5/23/24.
//

import SwiftUI

extension Image {
    func resizeImage(imgName: String, imageWidth: CGFloat) -> Image {
        if let img = UIImage(named: imgName)?.resize(newWidth: imageWidth) {
            return Image(uiImage: img)
        } else {
            fatalError("Failed to load or resize image")
        }
    }
}
