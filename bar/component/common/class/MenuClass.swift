//
//  MenuClass.swift
//  bar
//
//  Created by user on 10/3/25.
//

import SwiftUI
import Combine
class MenuClass : MenuProps{
    var id :UUID = UUID()
    var menuName:String="";
    @Published var menuImage:String="";
    @Published var active:Bool = false;
    var content:any View;
    
    init(_menuName:String,_menuImage:String,_active:Bool,_content:any View){
        self.menuName = _menuName;
        self.menuImage = _menuImage;
        self.active = _active;
        self.content = _content;
    }
}
