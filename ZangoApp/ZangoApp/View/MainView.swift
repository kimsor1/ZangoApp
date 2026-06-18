//
//  MainView.swift
//  ZangoApp
//
//  Created by 김소리 on 6/16/26.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedTab = 0
    @State private var showAddSheet = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                EmptyView()
                    .tag(0)
                    .toolbar(.hidden, for: .tabBar)
                
                EmptyView()
                    .tag(1)
                    .toolbar(.hidden, for: .tabBar)
                
                EmptyView()
                    .tag(2)
                    .toolbar(.hidden, for: .tabBar)
                
                EmptyView()
                    .tag(3)
                    .toolbar(.hidden, for: .tabBar)
            }
            
            CustomTabBar(selectedTab: $selectedTab, showAddSheet: $showAddSheet)
        }
        .sheet(isPresented: $showAddSheet) {
            EmptyView()
        }
    }
}

#Preview {
    MainView()
}
