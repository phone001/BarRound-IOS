//
//  OrderClass.swift
//  bar
//
//  Created by user on 12/8/25.
//

import SwiftUI
import Combine
class OrderClass : Identifiable {
    var id :UUID = UUID()
    var menuName:String="";
    var price:Int=0;
    var quantity:Int=0;
    
    init(_menuName:String,quantity:Int,price:Int){
        self.menuName = _menuName;
        self.quantity = quantity;
        self.price = price;
    }
}
