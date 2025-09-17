//
//  Untitled.swift
//  bar
//
//  Created by user on 10/3/25.
//

import Foundation
class DrinkClass : ProductProps{
    var id : UUID ;
    var name : String ;
    var price : Int
    var image : String
    init(_name:String,_price:Int,_image:String){
        self.id = UUID();
        self.name = _name;
        self.price = _price;
        self.image = _image;
    }
}
