//
//  DropDownMenu.swift
//  Feature
//
//  Created by 새미 on 6/26/24.
//

import SwiftUI

struct MenuOption {
    let icon: Image
    let menu: String
}

struct DropDownMenu: View {
    
    let options: [MenuOption]
    
    var menuWdith: CGFloat = 168
    var buttonHeight: CGFloat = 44
    var maxItemDisplayed: Int = 5

    @Binding var selectedOptionIndex: Int
    @Binding var showDropdown: Bool
    @Binding var selectedOptions: [String]
    
    @State  private  var scrollPosition: Int?
    
    var body: some  View {
        VStack(spacing: 0) {
            Button(action: {
                withAnimation {
                    showDropdown.toggle()
                }
            }, label: {
                HStack(spacing: 4) {
                    Spacer()
                    AlmaengiText("전체", textStyle: .bodyMedium, color: .g8)
                    Image(asset: FeatureAsset.Images.Icon.downArrow)
                        .resizable()
                        .frame(width: 16, height: 16)
                }
            })

            if (showDropdown) {
                let scrollViewHeight: CGFloat  = options.count > maxItemDisplayed ? (buttonHeight * CGFloat(maxItemDisplayed)) : (buttonHeight * CGFloat(options.count))
                
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(0..<options.count, id: \.self) { index in
                            Button(action: {
                                withAnimation {
                                    selectedOptionIndex = index
                                    let menu = options[index].menu
                                    if !selectedOptions.contains(menu) {
                                        selectedOptions.append(menu)
                                    }
                                    showDropdown.toggle()
                                }
                            }, label: {
                                HStack(spacing: 8) {
                                    options[index].icon
                                    AlmaengiText(options[index].menu, textStyle: .bodyMedium, color: .g9)
                                }
                            })
                            .padding(.leading, 12)
                            .frame(width: menuWdith, height: buttonHeight, alignment: .leading)
                        }
                    }
                    .scrollTargetLayout()
                }
                .padding(.vertical, 8)
                .scrollPosition(id: $scrollPosition)
                .scrollClipDisabled(options.count <= 5)
                .frame(height: scrollViewHeight)
                .onAppear {
                    scrollPosition = selectedOptionIndex
                }
                .background(RoundedRectangle(cornerRadius: 8).fill(Color.white))
                .shadow(color: .init(red: 112/255, green: 144/255, blue: 176/255).opacity(0.12), radius: 20, x: 0, y: 4)
            }
        }
        .frame(width: menuWdith, height: 28, alignment: .top)
    }
}

