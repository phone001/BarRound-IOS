//
//  BottomMenu.swift
//  bar
//
//  Created by admin on 9/20/25.
//

import SwiftUI

struct BottomMenu: View {
    @Binding var page : AnyView
    
    var menuList: [any MenuProps]  = [
        MenuClass(_menuName:"Home",_menuImage:"home",_active:true,_content: Home()),
        MenuClass(_menuName:"drink",_menuImage:"cocktail",_active:true,_content:Drink()),
//        MenuClass(_menuName:"food",_menuImage:"food",_active:true,_content:Food()),
        MenuClass(_menuName:"order",_menuImage:"cart",_active:true,_content: Order()),
        MenuClass(_menuName:"table",_menuImage:"table",_active:true,_content:Table())
    ]
    
    func click (content:any View){
        page = AnyView(content)
    }
  

        // 첫 번째 탭을 기본값으로 설정
       
    var body: some View {
            HStack{
                ForEach(menuList,id: \.id){ menu in
                    VStack{
                        Button(action:{click(content:menu.content)},
                               label:{
                            Image( menu.menuImage).resizable().frame(width: 50,height: 50)
                            }
                        )
                       
                    }.padding(10)
                }
        }
    }
}
#Preview {
//    BottomMenu(page: AnyView(Home()))
}
