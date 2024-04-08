//
//  ContentView.swift
//  CustomTabbarSwiftUI
//
//  Created by Chirag Gujarati on 4/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 1
    
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab) {
                Text("Content for Tab 1")
                    .tag(1)
                
                Text("Content for Tab 2")
                    .tag(2)
                
                Text("Content for Tab 3")
                    .tag(3)
                
                Text("Content for Tab 4")
                    .tag(4)
            }
            
            CustomTabBarView(selectedTab: $selectedTab)
                .background(.ultraThinMaterial)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
