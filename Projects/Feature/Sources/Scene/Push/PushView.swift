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
        VStack(alignment: .leading) {
            AlmaengiText("알림", textStyle: .titleBold, color: .g9)
                .padding(.vertical, 17)
            List {
                ForEach(1...10, id: \.self) { itemIndex in
                    PushCell()
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0)))
                    
                }
            }
            .listStyle(.plain)
        }
        .padding(.horizontal, 24)
    }
}
