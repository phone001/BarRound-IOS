//
//  Drink.swift
//  bar
//
//  Created by admin on 9/20/25.
//

import SwiftUI

struct Drink:View{
    var body:some View{
        VStack{
            ProductList(productLsit: getDrinkList())
        }
    }
}
