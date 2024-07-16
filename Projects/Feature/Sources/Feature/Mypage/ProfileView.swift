//
//  ProfileView.swift
//  Feature
//
//  Created by 새미 on 7/16/24.
//

import SwiftUI

public struct ProfileView: View {
    
    @State var showImagePicker = false
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    
    func loadImage() {
        guard let selectedImage = selectedUIImage else { return }
        image = Image(uiImage: selectedImage)
    }

    public var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Spacer()
                    ZStack(alignment: .bottomTrailing) {
                        if let image = image {
                            image
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 88, height: 88)
                        } else {
                            Image(asset: FeatureAsset.Images.Icon.profileView)
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 88, height: 88)
                        }
                        Button(action: {
                            showImagePicker.toggle()
                        }, label: {
                            Image(asset: FeatureAsset.Images.Icon.camera)
                        })
                        .sheet(isPresented: $showImagePicker, onDismiss: {
                            loadImage()
                        }) {
                            ImagePicker(image: $selectedUIImage)
                        }
                    }
                    .padding(.vertical, 24)
                    Spacer()
                }
                VStack(alignment: .leading, spacing: 4) {
                    AlmaengiText("한 줄 소개", textStyle: .descriptionMedium, color: .g9)
                    AlmaengiTextView(placeholder: "30자 이내로 김새미님을 간단히 소개해주세요.", height: 132)
                        .frame(width: proxy.size.width)
                }
                .padding(.bottom, 24)
                Spacer()
                AlmaengiButton(title: "변경사항 저장")
                    .padding(.vertical, 20)
            }
        }
        .padding(.horizontal, 24)
        .AlmaengiNavBarItems(title: "프로필 수정", backButtonHidden: false, backgroundColor: .clear)
    }
}


