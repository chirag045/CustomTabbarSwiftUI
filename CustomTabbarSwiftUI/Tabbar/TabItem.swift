//
//  TabButton.swift
//  CustomTabbar
//
//  Created by Chirag Gujarati on 4/6/24.
//

import SwiftUI

struct TabItem: View {
    @Binding var selectedTab: Int
    let index: Int
    let animationNamespace: Namespace.ID
    
    var body: some View {
        Button(action: {
            selectedTab = index
        }) {
            VStack {
                if selectedTab == index {
                    Rectangle()
                        .frame(height: 8)
                        .foregroundColor(.white)
                        .clipShape(RoundedCorner(radius: 5, corners: [.bottomLeft, .bottomRight]))
                        .matchedGeometryEffect(id: "SelectedTab", in: animationNamespace)
                        .shadow(color: Color.white.opacity(0.4), radius: 20, x: 0, y: 4)
                } else {
                    Rectangle()
                        .frame(height: 8)
                        .foregroundColor(.clear)
                        .clipShape(RoundedCorner(radius: 5, corners: [.bottomLeft, .bottomRight]))
                        .offset(y: 3)
                }
                
                Image(systemName: "\(index).circle.fill")
                    .resizable()
                    .foregroundColor(selectedTab == index ? .white : .gray)
                    .scaledToFit()
                    .padding(.bottom)
            }
        }
        .frame(height: 60)
        
        .buttonStyle(PlainButtonStyle())
    }
}
