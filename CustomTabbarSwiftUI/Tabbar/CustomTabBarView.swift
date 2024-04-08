//
//  CustomTabBar.swift
//  LogicBeats
//
//  Created by Chirag Gujarati on 4/6/24.
//

import SwiftUI

struct CustomTabBarView: View {
    @Binding var selectedTab: Int
    @Namespace private var animationNamespace
    
    var body: some View {
        ZStack{
            HStack(alignment: .center, spacing: 30){
                ForEach(1..<5) { index in
                    TabItem(selectedTab: $selectedTab, index: index, animationNamespace: animationNamespace)
                }
            }
            .padding()
            .frame(height: 60)
        }
        .background(Color(hex: "161D28").opacity(0.6))
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView(selectedTab: .constant(1))
    }
}
