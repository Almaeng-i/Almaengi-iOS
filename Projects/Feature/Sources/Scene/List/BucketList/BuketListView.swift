//
//  BuketListView.swift
//  Feature
//
//  Created by 새미 on 5/23/24.
//

import SwiftUI

public struct BuketListView: View {
    public init() {}
    
    public var body: some View {
        VStack{
            HStack {
                AlmaengiText("2024 Bucket List ✨", textStyle: .h2Bold, color: .g9, isFixedSize: true)
                Image(asset: FeatureAsset.Images.plus)
                    .onTapGesture {
                        print("Buket List 추가")
                    }
            }
        }
    }
}
