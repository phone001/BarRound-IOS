//
//  ContentView.swift
//  bar
//
//  Created by admin on 9/17/25.
//

import SwiftUI

struct AppView: View {
    @State var _page: AnyView = AnyView(Home());

   
    var body: some View {
        Headers()
        // 중앙 컨텐츠만 변경
        NavigationStack{
            ContentView(content :_page)
        }
        BottomMenu(page:$_page)
    }
}

#Preview {
    AppView()
}


