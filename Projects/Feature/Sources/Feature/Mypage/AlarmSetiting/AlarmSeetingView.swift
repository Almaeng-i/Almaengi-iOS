//
//  AlarmSeetingView.swift
//  Feature
//
//  Created by 새미 on 7/16/24.
//

import SwiftUI

public struct AlarmSeetingView: View {
    
    @State var appPushToggle = false
    @State var message = false
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            AlmaengiText("알림설정", textStyle: .bodyBold, color: .g9)
                .padding(.vertical, 14)
            HStack {
                Toggle(isOn: self.$appPushToggle) {
                    AlmaengiText("앱 푸시", textStyle: .h3Medium, color: .g9)
                }
            }
            .padding(.vertical, 12)
            HStack {
                Toggle(isOn: self.$message) {
                    AlmaengiText("문자(SMS/LMS)", textStyle: .h3Medium, color: .g9)
                }
            }
            .padding(.vertical, 12)
            Spacer()
        }
        .padding(.horizontal, 24)
        .AlmaengiNavBarItems(title: "알림 설정", backButtonHidden: false, backgroundColor: .clear)
    }
}

