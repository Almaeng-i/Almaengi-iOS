//
//  PlusButton.swift
//  Feature
//
//  Created by 새미 on 5/23/24.
//

import SwiftUI

struct PlusButton: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.primary3)
                .frame(maxWidth: 60)
                .frame(maxHeight: 60)
            Image(.plus)
        }
    }
}
