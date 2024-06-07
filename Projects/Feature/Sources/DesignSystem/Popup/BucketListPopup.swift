//
//  BucketListPopup.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

public struct BucketListPopup: View {
    
    @State var bucketList: String
    @State var content: String
    
    public init(bucketList: String, content: String) {
        self._bucketList = State(initialValue: bucketList)
        self._content = State(initialValue: content)
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            AlmaengiText("버킷리스트 입력", textStyle: .h3Bold, color: .g9)
            AlmaengiTextField("새미님의 버킷리스트를 입력해주세요.", text: $bucketList, isError: false)
            AlmaengiTextEditor(text: $content)
            Spacer()
            HStack(spacing: 8) {
                Spacer()
                Button {
                    print("취소")
                } label: {
                    CancelButton()
                }
                Button {
                    print("확인")
                } label: {
                    CheckButton()
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(.white)
        .cornerRadius(12)
    }
}
