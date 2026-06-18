//
//  TabBarItem.swift
//  ZangoApp
//
//  Created by 김소리 on 6/16/26.
//

import SwiftUI

struct TabBarItem: View {
    
    let icon: String
    let label: String
    let tag: Int
    
    @Binding var selectedTab: Int
    
    var isSelected: Bool { selectedTab == tag }
    
    var body: some View {
        Button {
            selectedTab = tag
        } label: {
            VStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.system(size: 20))
                Text(label)
                    .font(.system(size: 10))
            }
            .foregroundColor(isSelected ? Color(hex: "00236E") : .gray)
            .frame(maxWidth: .infinity)
        }
    }
}
#Preview {
    TabBarItem(icon: "house.fill", label: "홈", tag: 0, selectedTab: .constant(0))
}

