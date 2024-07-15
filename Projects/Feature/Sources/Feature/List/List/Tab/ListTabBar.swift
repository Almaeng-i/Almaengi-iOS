//
//  ListTabBar.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

enum ListTab {
    case todolist
    case bucketlist
}

struct ListTabBar: View {
    
    @Binding var selectedTab: ListTab
    
    var body: some View {
        HStack(spacing: 16) {
            Button() {
                selectedTab = .todolist
            } label: {
                tabItem(title: "투두리스트", isSelected: selectedTab == .todolist)
            }
            Button() {
                selectedTab = .bucketlist
            } label: {
                tabItem(title: "버킷리스트", isSelected: selectedTab == .bucketlist)
            }
        }
    }
}

extension ListTabBar {
    private func tabItem(title: String, isSelected: Bool) -> some View {
        VStack {
            AlmaengiText(
                title,
                textStyle: isSelected ? .bodyBold : .bodyMedium,
                color: isSelected ? .p3 : .black
            )
            Rectangle()
                .foregroundColor(isSelected ? .p3 : .clear)
                .frame(width: 70, height: 1)
        }
    }
}

