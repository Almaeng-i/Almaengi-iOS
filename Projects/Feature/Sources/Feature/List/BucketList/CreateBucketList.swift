//
//  CreateBucketList.swift
//  Feature
//
//  Created by 새미 on 7/16/24.
//

import SwiftUI

public struct CreateBucketList: View {
    
    @State var title: String
    
    public var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .leading, spacing: 0) {
                Image(asset: FeatureAsset.Images.Almaengi.Color.Chestnut.level2)
                    .padding(.top, 16)
                VStack(alignment: .leading, spacing: 0) {
                    AlmaengiText("나만의 소중한", textStyle: .bodyMedium, color: .g9)
                    AlmaengiText("버킷리스트에 대해 설명해주세요!", textStyle: .h2Bold, color: .g9)
                }
                .padding(.vertical, 8)
                VStack(spacing: 0) {
                    AlmaengiTextField("제목을 입력하세요.", text: $title)
                        .padding(.vertical, 12)
                    AlmaengiTextView(placeholder: "버킷리스트를 대해 더 알려주세요.", height: 153)
                        .frame(width: proxy.size.width)
                }
                Spacer()
                AlmaengiButton(title: "변경사항 저장")
                    .padding(.vertical, 20)
            }
        }
        .padding(.horizontal, 24)
        .AlmaengiNavBarItems(title: "버킷리스트 작성", backButtonHidden: false, backgroundColor: .clear)
    }
}



