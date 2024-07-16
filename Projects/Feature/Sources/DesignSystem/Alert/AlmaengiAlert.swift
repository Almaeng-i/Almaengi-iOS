//
//  AlmaengiAlert.swift
//  Feature
//
//  Created by 새미 on 7/15/24.
//

import SwiftUI

// MARK: - Alert
public struct AlmaengiAlert: View {
    
    var title: String
    var width: CGFloat
    var height: CGFloat
    var content: String
    let cancelButton: AlmaengiAlertButton
    let checkButton: AlmaengiAlertButton
    
    init(
        title: String,
        width: CGFloat,
        heigth: CGFloat,
        content: String,
        cancelButton: () -> AlmaengiAlertButton,
        checkButton: () -> AlmaengiAlertButton
    ) {
        self.title = title
        self.width = width
        self.height = heigth
        self.content = content
        self.cancelButton = cancelButton()
        self.checkButton = checkButton()
    }
    
    public var body: some View {
        ZStack {
            Color.black
                .opacity(0.5)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                AlmaengiText(title, textStyle: .h3Bold, color: .g9)
                HStack(spacing: 8) {
                    Spacer()
                    self.cancelButton
                    self.checkButton
                }
                .padding(.top, 30)
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 16)
            .frame(width: width, height: height)
            .background(.white)
            .cornerRadius(12)
        }
        .background(ClearBackground())
    }
}

// MARK: - Modifier
public struct AlmaengiAlertModifier: ViewModifier {
    
    @Binding var isPresent: Bool
    
    let alert: AlmaengiAlert
    
    public func body(content: Content) -> some View {
        content
            .fullScreenCover(isPresented: $isPresent) {
                alert
            }
            .transaction { transaction in
                transaction.disablesAnimations = true
            }
    }
}

// MARK: - Extension
extension View {
    public func almaengiAlert(isPresented:Binding<Bool>, almaengiAlert: @escaping () -> AlmaengiAlert) -> some View {
        return modifier(AlmaengiAlertModifier(isPresent: isPresented, alert: almaengiAlert()))
    }
}
