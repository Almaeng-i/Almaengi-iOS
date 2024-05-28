//
//  CheckButton.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

public struct CheckButton: View {
    
    public init() {}
    
    public var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.p3)
            AlmaengiText("확인", textStyle: .bodyBold, color: .white)
        }
        .frame(width: 84, height: 40)
        .cornerRadius(8)
    }
}
