//
//  Untitled.swift
//  bar
//
//  Created by user on 10/3/25.
//
import SwiftUI
protocol MenuProps:Identifiable{
    var id:UUID {get}
    var menuName:String {get };
    var menuImage:String {get };
    var active:Bool {get}
    var content:any View{get}
}
