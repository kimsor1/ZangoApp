//
//  CustomTabbar.swift
//  ZangoApp
//
//  Created by 김소리 on 6/16/26.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    @Binding var showAddSheet: Bool

    var body: some View {
        HStack {
            TabBarItem(icon: "house.fill", label: "홈", tag: 0, selectedTab: $selectedTab)
            
            TabBarItem(icon: "list.bullet", label: "내역", tag: 1, selectedTab: $selectedTab)
            
            Button {
                showAddSheet = true
            } label: {
                Circle()
                    .fill(Color(hex: "00236E"))
                    .frame(width: 52, height: 52)
                    .overlay(Image(systemName: "plus").foregroundColor(.white).font(.title2))
                    .offset(y: -16)
            }
            
            TabBarItem(icon: "chart.pie.fill", label: "리포트", tag: 2, selectedTab: $selectedTab)
            
            
            TabBarItem(icon: "gearshape.fill", label: "설정", tag: 3, selectedTab: $selectedTab)
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 8)
        .background(.ultraThinMaterial)
        .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: -2)
    }
}




#Preview {
    CustomTabBar(selectedTab: .constant(0), showAddSheet: .constant(false))
}
