//
//  AlmaengiAlertButton.swift
//  Feature
//
//  Created by 새미 on 7/15/24.
//

import Foundation
import SwiftUI

public enum AlmaengiAlertButtonType {
    case cancel
    case check
}

public struct AlmaengiAlertButton: View {
    
    typealias Action = () -> ()
    
    @Binding var isPresented: Bool
    
    var title: String
    var textColor: Color
    var background: Color
    var type: AlmaengiAlertButtonType
    var action: Action
    
    init(isPresented: Binding<Bool>,
         type: AlmaengiAlertButtonType,
         action: @escaping Action
    ) {
        self._isPresented = isPresented
        
        switch type {
        case .cancel:
            self.title = "취소"
            self.background = .white
            self.textColor = .p3
        case .check:
            self.title = "확인"
            self.background = .p3
            self.textColor = .white
        }
        self.action = action
        self.type = type
    }
    
    public var body: some View {
        Button(action: {
            self.isPresented = false
            action()
        }, label: {
            AlmaengiText(title, textStyle: .bodyBold, color: textColor)
                .frame(width: 84, height: 40)
                .background(background)
                .cornerRadius(8)
        })
    }
}


