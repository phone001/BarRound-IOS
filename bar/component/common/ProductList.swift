//
//  ProductList.swift
//  bar
//
//  Created by user on 10/4/25.
//

import SwiftUI;

struct ProductList: View {
    let productList: [any ProductProps]
    
    var column :[GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        HStack{
            LazyVGrid(columns: column, spacing: 24){
                ForEach(productList, id:\.id){product in
                    NavigationLink(
                        // 리스트 item 클릭시 보여줄 상세 내용
                        destination:
                            ProductDetail(product: product)
                        // 리스트 item
                        ,label: {
                            VStack{
                                Image(product.image).resizable().frame(width: 100, height: 100)
                                Text(product.name)
                                Text("\(product.price)")
                                
                            }
                    })
                }
            }
        }}
}

#Preview {
    ProductList(productList: getDrinkList())
}
