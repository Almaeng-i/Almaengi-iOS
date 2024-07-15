//
//  ProfileImageView.swift
//  Feature
//
//  Created by 새미 on 6/18/24.
//

import SwiftUI

struct ProfileImageView: View {
    
    @State var showImagePicker = false
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    
    func loadImage() {
        guard let selectedImage = selectedUIImage else { return }
        image = Image(uiImage: selectedImage)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            AlmaengiText("프로필 이미지를 등록해주세요.", textStyle: .titleBold, color: .g9)
                .padding(.vertical, 20)
            HStack {
                Spacer()
                VStack(spacing: 20) {
                    if let image = image {
                        image
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                    } else {
                        Image(asset: FeatureAsset.Images.Icon.profileView)
                            .resizable()
                            .foregroundColor(.blue)
                            .frame(width: 100, height: 100)
                    }
                    Button {
                        showImagePicker.toggle()
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.p3)
                                .cornerRadius(12)
                                .frame(width: 88, height: 34)
                            AlmaengiText("이미지 등록", textStyle: .descriptionBold, color: .white)
                        }
                    }
                    .sheet(isPresented: $showImagePicker, onDismiss: {
                        loadImage()
                    }) {
                        ImagePicker(image: $selectedUIImage)
                    }
                    
                }
                Spacer()
            }
            Spacer()
            AlmaengiNavLink(destination: ProfileIntroduce()) {
                AlmaengiButton(title: "다음")
            }
            .padding(.bottom, 16)
            HStack {
                Spacer()
                Button(action: {
                    print("다음에 하기")
                }, label: {
                    AlmaengiNavLink(destination: ProfileIntroduce()) {
                        AlmaengiText("다음에 할게요", textStyle: .bodyBold, color: .p3)
                    }
                })
                Spacer()
            }
            .padding(.bottom, 20)
        }
        .AlmaengiNavBarItems(title: "프로필 등록", backButtonHidden: false, backgroundColor: .clear)
        .padding(.horizontal, 24)
    }
}
