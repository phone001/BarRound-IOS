//
//  ProductDetail.swift
//  bar
//
//  Created by user on 11/9/25.
//
import SwiftUI

struct ProductDetail: View {
    let product: any ProductProps
    var body: some View {
        VStack{
            Image(product.image)
            Text(product.name)
            Text("\(product.price) 원")
        }
    }
}


#Preview {
    ProductDetail(product: getDrinkList()[0])
}
