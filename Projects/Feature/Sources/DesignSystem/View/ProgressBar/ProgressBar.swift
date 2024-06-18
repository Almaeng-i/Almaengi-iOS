//
//  ProgressBar.swift
//  Feature
//
//  Created by 새미 on 6/7/24.
//

import SwiftUI

struct ProgressBar: View {
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 168)
                .fill(Color.p1)
                .frame(width: 154, height: 11)
            RoundedRectangle(cornerRadius: 168)
                .fill(Color.p3)
                .frame(width: 108, height: 11)
        }
    }
}
