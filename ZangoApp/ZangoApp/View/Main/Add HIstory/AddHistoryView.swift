//
//  AddHistoryView.swift
//  ZangoApp
//
//  Created by 김소리 on 6/18/26.
//

import SwiftUI

struct AddHistoryView: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {}, label: {
                    Text("수입")
                })
                
                
                Button(action: {}, label: {
                    Text("지출")
                })
            }
        }
    }
}

#Preview {
    AddHistoryView()
}
