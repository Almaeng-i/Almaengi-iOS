//
//  MypageView.swift
//  Feature
//
//  Created by 새미 on 6/4/24.
//

import SwiftUI

public struct MypageView: View {
    private let sectionTitle: [String] = ["알맹이 설정", "개인정보 설정"]
    private let title: [String] = ["수집한 알맹이", "아이템 보관함", "알맹이 튜토리얼", "로그아웃", "회원탈퇴", "알람 설정", "프로필 설정"]
    private let icon = [
        Image(asset: FeatureAsset.Images.Icon.nuts),
        Image(asset: FeatureAsset.Images.Icon.box),
        Image(asset: FeatureAsset.Images.Icon.book),
        Image(asset: FeatureAsset.Images.Icon.logout),
        Image(asset: FeatureAsset.Images.Icon.signout),
        Image(asset: FeatureAsset.Images.Icon.bell),
        Image(asset: FeatureAsset.Images.Icon.setting),
    ]
    
    public init() { }
    
    public var body: some View {
        VStack(alignment: .leading) {
            AlmaengiText("마이페이지", textStyle: .titleBold, color: .black)
                .padding(.vertical, 14)
            HStack {
                Image(asset: FeatureAsset.Images.Icon.profileView)
                    .resizable()
                    .frame(width: 56, height: 56)
                VStack(alignment: .leading, spacing: 0) {
                    AlmaengiText("김새미", textStyle: .h3Bold, color: .g9)
                    AlmaengiText("한 줄 소개 작성 부분입니다.", textStyle: .descriptionMedium, color: .g5)
                }
                Spacer()
                LevelView(background: Color(red: 0.76, green: 0.52, blue: 0.34))
            }
            .padding(.vertical, 12)
            SectionHeader(title: sectionTitle[0])
            VStack(spacing: 20) {
                AlmaengiNavLink(destination: CollectionView()) {
                    SectionCell(icon: icon[0], title: title[0])
                } action: {
                    print("")
                }
                SectionCell(icon: icon[1], title: title[1])
                SectionCell(icon: icon[2], title: title[2])
                
            }
            .padding(.vertical, 16)
            SectionHeader(title: sectionTitle[1])
            VStack(spacing: 20) {
                ForEach(3..<7) { index in
                    SectionCell(icon: icon[index], title: title[index])
                }
            }
            .padding(.vertical, 24)
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}
