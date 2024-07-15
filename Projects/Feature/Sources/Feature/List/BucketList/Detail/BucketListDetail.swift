//
//  BucketListDetail.swift
//  Feature
//
//  Created by 새미 on 5/29/24.
//

import SwiftUI

public struct BucketListDetail: View {
    
    public init() {}
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            AlmaengiText("알맹이 iOS 🌀", textStyle: .titleBold, color: .g9)
            AlmaengiText("일반적으로 투두앱을 사용하는 유저들은 계획을 세우고 실행하는 과정이 지루하게 느껴지고 계획을 실행한다고 해도 결과가 눈에 직접적으로 보이지 않아 성취감이 잘 느껴지지 않는다는 불편함을 겪고있습니다. 알맹이는 이러한 페인포인트들을 개선하기 위해 기획하게 된 프로젝트 입니다.", textStyle: .bodyMedium, color: .g7)
        }
        .padding(.horizontal, 24)
    }
}
