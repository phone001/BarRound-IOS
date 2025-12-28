//
//  index.swift
//  bar
//
//  Created by admin on 9/20/25.
//
import SwiftUI

struct OrderList: View {
    let orderListArr: [[OrderClass]];
    
    let detail: Bool = false;
    @State private var isUp:[Bool] = []
    
    func setTotalPrice() -> Int{
        var totalPrice :Int = 0;
        for orderList in orderListArr {
            for order in orderList{
                totalPrice = totalPrice + order.price;
            }
        }
        return totalPrice;
    }
    
    var totalPrice : Int  {
        return setTotalPrice();
    }
    
    init(orderListArr: [[OrderClass]]) {
        self.orderListArr = orderListArr
        
        self._isUp = State(initialValue: Array(repeating: true, count: orderListArr.count))
    }
    var body: some View {
        VStack{
            ForEach(orderListArr.indices,id: \.self){index in
                HStack{
                    Text("주문 \(index + 1)")
                    Image(systemName: "chevron.down")
                        .rotationEffect(.degrees(isUp[index] ? 180 : 0)) .animation(.easeInOut(duration: 0.3), value: isUp[index])
                        .onTapGesture {
                            // 5. 클릭 시 상태 반전
                            isUp[index].toggle()
                        }
                }
                if (isUp[index]){
                    ForEach(orderListArr[index].indices, id: \.self){order in
                        VStack(alignment: .leading){
                            HStack{
                                Text(orderListArr[index][order].menuName)
                                Text(String(orderListArr[index][order].quantity))
                                Text(String(orderListArr[index][order].quantity*orderListArr[index][order].price))
                                Spacer()
                            }
                        }.padding(.vertical)
                            .background(Color(.systemGray6))
                        // ✨ 부드러운 등장 효과 (위에서 아래로 미끄러짐 + 투명도)
                            .transition(.asymmetric(
                                insertion: .move(edge: .top).combined(with: .opacity),
                                removal: .opacity
                            ))
                    }
                }
            }
            Spacer(minLength: 10);
            //최종 결제 금액
            Text("결제 금액 : \(String(totalPrice))")
        }.frame(maxHeight: .infinity).background(Color.yellow)
    }
}

#Preview {
    OrderList(orderListArr: getOrderList())
}
