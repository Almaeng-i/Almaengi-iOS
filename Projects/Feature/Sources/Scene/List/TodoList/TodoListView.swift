//
//  TodoListView.swift
//  Feature
//
//  Created by 새미 on 5/23/24.
//

import SwiftUI

public struct TodoListView: View {
    
    public init() {}
    
    public var body: some View {
        VStack(spacing: 0) {
            CalenderView(month: Date())
            TodoListTemplate(title: "ToDo")
            TodoListTemplate(title: "Monthly Goal")
        }
    }
}

