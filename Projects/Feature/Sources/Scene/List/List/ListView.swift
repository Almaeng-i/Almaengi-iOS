//
//  ListView.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

public struct ListView: View {
    
    public init() {}
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            AlmaengiText("리스트", textStyle: .titleBold, color: .black)
                .padding(.top, 58)
                .padding(.bottom, 14)
            ListTabBar()
                .padding(.vertical, 12)
            TodoListView()
        }
        .padding(.horizontal, 24)
    }
}
