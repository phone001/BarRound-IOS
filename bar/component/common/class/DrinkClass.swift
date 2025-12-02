//
//  Untitled.swift
//  bar
//
//  Created by user on 10/3/25.
//

import Foundation
class DrinkClass : ProductProps{
    var id : Int ;
    var name : String ;
    var price : Int
    var image : String
    init(_id:Int,_name:String,_price:Int,_image:String){
        self.id = _id;
        self.name = _name;
        self.price = _price;
        self.image = _image;
    }
}
