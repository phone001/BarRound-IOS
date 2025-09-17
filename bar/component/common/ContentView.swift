//
//  ContentView.swift
//  bar
//
//  Created by admin on 9/20/25.
//

import SwiftUI

struct ContentView: View {
    var content :AnyView;
    
    var body: some View {
        ScrollView{
            VStack (spacing:15){
                content
            }
        }
    }
}

#Preview {
    ContentView(content: AnyView(Home()))
}
