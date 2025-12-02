//
//  Drink.swift
//  bar
//
//  Created by admin on 9/20/25.
//

import SwiftUI

struct Drink:View{
    @State private var isDetail:Bool = false
    
    var body:some View{
        VStack{
            ProductList(productList: getDrinkList())
        }
    }
}
