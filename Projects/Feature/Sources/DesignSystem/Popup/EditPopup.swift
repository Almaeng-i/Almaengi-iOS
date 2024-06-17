//
//  EditPopup.swift
//  Feature
//
//  Created by 새미 on 5/28/24.
//

import SwiftUI

public struct EditPopup: View {
    
    public init() {}
    
    public var body: some View {
        VStack(spacing: 0) {
            Button {
                print("수정")
            } label: {
                EditButton()
            }
            Button {
                print("삭제")
            } label: {
                DeleteButton()
            }
        }
        .padding(12)
        .background(.white)
        .frame(width: 160)
        .cornerRadius(8)
        .shadow(color: Color(red: 0.44, green: 0.56, blue: 0.69).opacity(0.12), radius: 10, x: 0, y: 4)
    }
}

// MARK: - Edit Button
struct EditButton: View {
    var body: some View {
        HStack(spacing: 8) {
            Image(asset: FeatureAsset.Images.Icon.pen)
            AlmaengiText("수정", textStyle: .bodyMedium, color: .g9)
            Spacer()
        }
        .frame(height: 44)
    }
}

// MARK: - Delete Button
struct DeleteButton: View {
    var body: some View {
        HStack(spacing: 16) {
            Image(asset: FeatureAsset.Images.Icon.delete)
            AlmaengiText("삭제", textStyle: .bodyMedium, color: .systemRed)
            Spacer()
        }
        .frame(height: 44)
    }
}

