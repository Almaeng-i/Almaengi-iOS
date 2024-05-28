//
//  BucketListPopup.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

public struct BucketListPopup: View {
    
    @State var bucketList: String
    
    public init(bucketList: String) {
        self._bucketList = State(initialValue: bucketList)
    }
    
    public var body: some View {
        VStack {
            AlmaengiText("버킷리스트 입력", textStyle: .h3Bold, color: .g9)
            AlmaengiTextField("새미님의 버킷리스트를 입력해주세요.", text: $bucketList, isError: false)
        }
    }
}
