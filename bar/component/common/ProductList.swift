//
//  ProductList.swift
//  bar
//
//  Created by user on 10/4/25.
//

import SwiftUI;

struct ProductList: View {
    let productLsit: [any ProductProps]

    func click (){
        print(productLsit.count)
    }
    var column :[GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    var body: some View {
        HStack{
            LazyVGrid(columns: column, spacing: 24){
                ForEach(productLsit, id:\.id){product in
                    Button(
                        action:{click()},
                        label:{
                            VStack{
                                Image(product.image).resizable().frame(width: 100, height: 100)
                                Text(product.name)
                                Text("\(product.price)")
                                
                            }
                            
                        }
                    )
                }
            }
        }
    }
}
#Preview {
    ProductList(productLsit: getFoodList())
}
