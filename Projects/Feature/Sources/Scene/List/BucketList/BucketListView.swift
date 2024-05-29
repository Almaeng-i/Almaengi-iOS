//
//  BucketListView.swift
//  Feature
//
//  Created by 새미 on 5/23/24.
//

import SwiftUI

public struct BucketListView: View {
    
    public init() {}
    
    public var body: some View {
        VStack(spacing: 12) {
            HStack {
                AlmaengiText("2024 Bucket List ✨", textStyle: .h2Bold, color: .g9, isFixedSize: true)
                Spacer()
                Button {
                    print("버킷리스트 추가")
                } label: {
                    Image(asset: FeatureAsset.Images.plus)
                }
            }
            List {
                ForEach(1...10, id: \.self) { itemIndex in
                    BucketListCard(title: "알맹이 iOS Test Text", content: "Test Content", background: .clear, isAchieve: true)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets(.init(top: 6, leading: 0, bottom: 6, trailing: 0)))
                        
                }
            }
            .environment(\.defaultMinListRowHeight, 12)
            .listStyle(.plain)
        }
        .padding(.vertical, 24)
    }
}



