//
//  TextView.swift
//  Feature
//
//  Created by 새미 on 6/18/24.
//

import SwiftUI
import UIKit

// MARK: - Text View
public struct TextView: UIViewRepresentable {
    @Binding var text: String

    var textFont: UIFont
    var textColor: UIColor = .black
    var textLimit: Int = 30
    var cornerRadius: CGFloat? = nil
    var borderWidth: CGFloat? = nil
    var borderColor: CGColor? = nil
    var isScrollEnabled: Bool = true
    var isEditable: Bool = true
    var isUserInteractionEnabled: Bool = true
    var lineFragmentPadding: CGFloat = 0
    var textContainerInset: UIEdgeInsets = .init(top: 16, left: 16, bottom: 16, right: 16)
    var placeholder: String? = nil
    var placeholderColor: UIColor = UIColor(red: 0.599, green: 0.599, blue: 0.599, alpha: 1)
    
    public func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        
        if let cornerRadius = cornerRadius {
            textView.layer.cornerRadius = cornerRadius
            textView.layer.masksToBounds = true
        }
        if let borderWidth = borderWidth {
            textView.layer.borderWidth = borderWidth
        }
        if let borderColor = borderColor {
            textView.layer.borderColor = borderColor
        }
        if let placeholder = placeholder {
            textView.text = placeholder
            textView.textColor = placeholderColor
        } else {
            textView.textColor = textColor
        }
        
        textView.font = textFont
        textView.isScrollEnabled = isScrollEnabled
        textView.isEditable = isEditable
        textView.isUserInteractionEnabled = isUserInteractionEnabled
        textView.textContainer.lineFragmentPadding = lineFragmentPadding
        textView.textContainerInset = textContainerInset
        textView.delegate = context.coordinator
        
        return textView
    }
    
    public func updateUIView(_ uiView: UITextView, context: Context) {
        
    }
    
    public func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    public class Coordinator: NSObject, UITextViewDelegate {
        var parent: TextView
        
        init(parent: TextView) {
            self.parent = parent
        }
        
        public func textViewDidChange(_ textView: UITextView) {
            parent.text = textView.text
            
            if textView.text.isEmpty {
                textView.textColor = parent.placeholderColor
            } else {
                textView.textColor = parent.textColor
            }
            
            if textView.text.count > parent.textLimit {
                textView.text.removeLast()
            }
        }
        
        public func textViewDidBeginEditing(_ textView: UITextView) {
            if textView.text == parent.placeholder {
                textView.text = ""
            }
        }
        
        public func textViewDidEndEditing(_ textView: UITextView) {
            if textView.text.isEmpty {
                textView.text = parent.placeholder
            }
        }
    }
}
