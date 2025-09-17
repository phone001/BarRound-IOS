//
//  Headers.swift
//  bar
//
//  Created by admin on 9/20/25.
//

import SwiftUI

struct Headers: View {
    var body: some View {
        VStack (spacing:0){
            Image("logo")
                .resizable()
                .frame(width:100,height: 100)
            // 커스텀 밑줄
                        Rectangle()
                            .frame(height: 1.5) // 두께 조절
                            .foregroundColor(.black.opacity(0.5)) // 색상 및 투명도 조절
        }
    }
}

#Preview {
    Headers()
}
