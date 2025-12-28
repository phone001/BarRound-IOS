//
//  Order.swift
//  bar
//
//  Created by admin on 9/20/25.
//
import SwiftUI

struct Order:View{
    var body:some View{
        OrderList(orderListArr:getOrderList())
    }
}
