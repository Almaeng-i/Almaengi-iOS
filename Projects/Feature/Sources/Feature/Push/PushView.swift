//
//  PushView.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

public struct PushView: View {
    public init() {}
    
    public var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                AlmaengiText("알림", textStyle: .titleBold, color: .g9)
                    .padding(.vertical, 17)
                VStack {
                    PushCell()
                    PushCell()
                    PushCell()
                    PushCell()
                    PushCell()
                    PushCell()
                }
            }
            .padding(.horizontal, 24)
        }
    }
}
